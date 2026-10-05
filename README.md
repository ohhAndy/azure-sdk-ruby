# azure_rest

Ruby gem for the Azure Resource Manager REST API, generated from the official
[Azure REST API OpenAPI specs](https://github.com/Azure/azure-rest-api-specs).

`azure_rest` provides a two-tier architecture:
- **Tier 1 (Generated OpenAPI Layer):** Direct OpenAPI-generated low-level API client and model classes per ARM namespace.
- **Tier 2 (High-Level Ergonomic Layer):** Top-level `AzureRest::Client` providing profile-driven API versioning, automatic authentication and token lifecycle management, Azure Stack metadata discovery, enumerable auto-pagination, long-running operation (LRO) polling, and unified error hierarchies.

## Requirements

- Ruby >= 2.7
- Java (for regenerating from source specs)

## Installation

Add to your `Gemfile`:

```ruby
gem "azure_rest"
```

Or install directly:

```sh
gem install azure_rest
```

## Architecture Overview

```
┌────────────────────────────────────────────────────────────────────────┐
│                        Tier 2: AzureRest::Client                       │
│  • Profile-driven API version selection (Azure, US Gov, Azure Stack)   │
│  • Token management & refresh (Client credentials, Password/ADFS)      │
│  • Automatic Azure Stack metadata discovery                            │
│  • High-level resource facades (VMs, VNets, Storage Accounts, etc.)    │
│  • Enumerable auto-pagination (Http::Paginator)                        │
│  • Long-Running Operation polling (Http::LroPoller)                    │
│  • Unified exception hierarchy (AzureRest::AzureApiError)              │
└───────────────────────────────────┬────────────────────────────────────┘
                                    │ wraps
┌───────────────────────────────────▼────────────────────────────────────┐
│                    Tier 1: Generated OpenAPI Layer                     │
│  • Service namespaces (AzureRest::Compute, Network, Storage, etc.)    │
│  • Low-level ApiClient & per-operation Api classes                     │
│  • Type-safe request/response models & serialization                   │
└────────────────────────────────────────────────────────────────────────┘
```

---

## Quick Start (Tier 2 Client)

### 1. Authenticate with Service Principal (Azure Public Cloud)

```ruby
require "azure_rest"

# Configure client credentials
credentials = AzureRest::Auth::ClientCredentialToken.new(
  tenant:        ENV["AZURE_TENANT_ID"],
  client_id:     ENV["AZURE_CLIENT_ID"],
  client_secret: ENV["AZURE_CLIENT_SECRET"]
)

# Initialize the top-level client
client = AzureRest::Client.new(
  profile:         :latest, # or AzureRest::Profiles::AzureLatest
  subscription_id: ENV["AZURE_SUBSCRIPTION_ID"],
  credentials:     credentials
)

# List all resource groups
client.resources.resource_groups.list.each do |rg|
  puts "Resource Group: #{rg.name} (#{rg.location})"
end

# List Virtual Machines across all resource groups (auto-paginated)
client.compute.virtual_machines.list_all.each do |vm|
  puts "VM: #{vm.name} [#{vm.location}]"
end
```

### 2. Azure Stack Hub (Metadata Discovery & Password/ADFS Auth)

When targeting Azure Stack Hub or hybrid environments, `azure_rest` supports automatic endpoint discovery (`/metadata/endpoints`) and password credentials:

```ruby
credentials = AzureRest::Auth::PasswordToken.new(
  tenant:   "your-tenant-id",
  username: "user@domain.com",
  password: "password"
)

client = AzureRest::Client.new(
  profile:         "2020-09-01-hybrid", # Profile with auto-discovery
  subscription_id: "stack-sub-id",
  credentials:     credentials,
  base_url:        "https://management.stack.local"
)

# Automatically queries Stack endpoints, fetches tokens, and uses profile API versions
client.compute.virtual_machines.list_all.each do |vm|
  puts "Stack VM: #{vm.name}"
end
```

---

## Key Features (Tier 2)

### Profiles & API Versioning

Azure REST APIs require an `api-version` query parameter per operation. Profiles map service operations to compatible API versions for a specific target environment:

- **`AzureRest::Profiles::AzureLatest` (`:latest`, `"latest"`, `"public"`):** Public Azure cloud with the latest tested API versions.
- **`AzureRest::Profiles::AzureUSGovLatest` (`:usgov`, `"usgov"`):** Azure US Government Cloud (`management.usgovcloudapi.net`).
- **`AzureRest::Profiles::AzureStack20200901` (`"2020-09-01-hybrid"`):** Azure Stack Hub 2020-09-01 profile with dynamic metadata discovery.
- **`AzureRest::Profiles::AzureStack20180301` (`"2018-03-01-hybrid"`):** Azure Stack Hub 2018-03-01 profile.
- **`AzureRest::Profiles::AzureStack20170309` (`"2017-03-09-profile"`):** Azure Stack Hub 2017-03-09 profile.

```ruby
# Custom profile definition
custom_profile = AzureRest::Profile.new(
  base_url:                "management.azure.com",
  auth_mode:               :static,
  authentication_endpoint: "https://login.microsoftonline.com/",
  token_audience:          "https://management.azure.com/",
  api_versions:            { virtual_machines: "2023-09-01" }
)
```

### Automatic Pagination (`Http::Paginator`)

List operations return an `AzureRest::Http::Paginator` which implements Ruby's `Enumerable` module. Pages are lazily fetched as you iterate using Azure `nextLink` URLs:

```ruby
paginator = client.network.virtual_networks.list("my-rg")

# Lazy Enumerable methods
paginator.each { |vnet| puts vnet.name }
all_vnets = paginator.to_a
first_vnet = paginator.first
```

### Long-Running Operation Polling (`Http::LroPoller`)

Asynchronous ARM operations returning `201 Created` or `202 Accepted` with `Azure-AsyncOperation` or `Location` headers can be polled using `AzureRest::Http::LroPoller`:

```ruby
poller = AzureRest::Http::LroPoller.new(client.api_client, raw_response)
if poller.async?
  result = poller.wait(interval: 5, timeout: 600)
end
```

### Unified Error Handling

HTTP errors are mapped to specific subclasses of `AzureRest::AzureApiError`:

| Exception Class | HTTP Status |
|-----------------|-------------|
| `AzureRest::BadRequestError` | `400` |
| `AzureRest::UnauthorizedError` | `401` |
| `AzureRest::ForbiddenError` | `403` |
| `AzureRest::NotFoundError` | `404` |
| `AzureRest::ConflictError` | `409` |
| `AzureRest::AzureApiError` | Other 4xx/5xx |

```ruby
begin
  client.compute.virtual_machines.get("my-rg", "non-existent-vm")
rescue AzureRest::NotFoundError => e
  puts "VM not found: #{e.error_code} - #{e.error_message} (status: #{e.status})"
rescue AzureRest::AzureApiError => e
  puts "Azure API error: #{e.message}"
end
```

---

## Service Facades

The `AzureRest::Client` exposes facades for ARM service areas:

| Client Accessor | Service / Namespace | Facades & Key Operations |
|-----------------|---------------------|--------------------------|
| `client.compute` | `AzureRest::Compute` | `virtual_machines`, `virtual_machine_sizes`, `availability_sets`, `disks`, `snapshots` |
| `client.network` | `AzureRest::Network` | `virtual_networks`, `network_interfaces`, `network_security_groups`, `public_ip_addresses`, `load_balancers`, `route_tables` |
| `client.storage` | `AzureRest::Storage` | `storage_accounts` (CRUD, keys) |
| `client.resources` | `AzureRest::Resources` | `resource_groups`, `resources`, `deployments`, `deployment_operations`, `providers` |
| `client.key_vault` | `AzureRest::KeyVault` | `vaults` |
| `client.container_service` | `AzureRest::ContainerService` | `managed_clusters` (AKS) |
| `client.sql` | `AzureRest::Sql` | `sql_servers`, `databases` |
| `client.my_sql` | `AzureRest::MySQL` | `servers`, `databases` |
| `client.postgre_sql` | `AzureRest::PostgreSQL` | `servers`, `databases` |
| `client.maria_db` | `AzureRest::MariaDB` | `servers`, `databases` |
| `client.authorization` | `AzureRest::Authorization` | `role_assignments` |
| `client.insights` | `AzureRest::Insights` | `scheduled_query_rules`, `activity_logs`, `metrics` |
| `client.hd_insight` | `AzureRest::HDInsight` | `clusters` |
| `client.commerce` | `AzureRest::Commerce` | `usage_aggregates`, `rate_card` |

---

## Tier 1 Usage (Direct OpenAPI Layer)

You can also use generated low-level API and Model classes directly if granular control is needed:

```ruby
require "azure_rest"

# Configure low-level ApiClient
config = AzureRest::Configuration.new
config.host = "management.azure.com"
config.access_token = "Bearer <token>"

api_client = AzureRest::ApiClient.new(config)

# Call API directly
api = AzureRest::Compute::VirtualMachinesApi.new(api_client)
result = api.virtual_machines_get("2024-07-01", "sub-id", "my-rg", "my-vm")
```

---

## Namespaces & Documentation

Each ARM namespace contains generated API classes and models, documented in its respective `docs/` folder:

| Namespace | Module | Docs |
|---|---|---|
| `lib/azure_rest/compute/` | `AzureRest::Compute` | [docs/compute/](docs/compute/) |
| `lib/azure_rest/network/` | `AzureRest::Network` | [docs/network/](docs/network/) |
| `lib/azure_rest/storage/` | `AzureRest::Storage` | [docs/storage/](docs/storage/) |
| `lib/azure_rest/resources/` | `AzureRest::Resources` | [docs/resources/](docs/resources/) |
| `lib/azure_rest/key_vault/` | `AzureRest::KeyVault` | [docs/key_vault/](docs/key_vault/) |
| `lib/azure_rest/container_service/` | `AzureRest::ContainerService` | [docs/container_service/](docs/container_service/) |
| `lib/azure_rest/sql/` | `AzureRest::Sql` | [docs/sql/](docs/sql/) |
| `lib/azure_rest/maria_db/` | `AzureRest::MariaDB` | [docs/maria_db/](docs/maria_db/) |
| `lib/azure_rest/my_sql/` | `AzureRest::MySQL` | [docs/my_sql/](docs/my_sql/) |
| `lib/azure_rest/postgre_sql/` | `AzureRest::PostgreSQL` | [docs/postgre_sql/](docs/postgre_sql/) |
| `lib/azure_rest/authorization/` | `AzureRest::Authorization` | [docs/authorization/](docs/authorization/) |
| `lib/azure_rest/insights/` | `AzureRest::Insights` | [docs/insights/](docs/insights/) |
| `lib/azure_rest/hd_insight/` | `AzureRest::HDInsight` | [docs/hd_insight/](docs/hd_insight/) |
| `lib/azure_rest/commerce/` | `AzureRest::Commerce` | [docs/commerce/](docs/commerce/) |

---

## Regenerating

The low-level SDK is generated from the latest stable Azure OpenAPI specs using [openapi-generator](https://openapi-generator.tech/). To regenerate:

```sh
# Requires: java, curl or wget
bin/openapi-generate
```

The script downloads `openapi-generator-cli` JAR from Maven Central (or uses a cached copy), resolves the latest stable spec URL for each ARM namespace, and generates files into `lib/azure_rest/<namespace>/`.

Set `GITHUB_TOKEN` to avoid GitHub API rate limits:

```sh
GITHUB_TOKEN=ghp_... bin/openapi-generate
```

Pin a specific generator version:

```sh
OPENAPI_GENERATOR_JAR=openapi-generator-cli-7.25.0.jar bin/openapi-generate
```

## CI

A GitHub Actions workflow ([`.github/workflows/openapi-generate.yml`](.github/workflows/openapi-generate.yml)) runs every Sunday and opens a pull request when upstream specs change. It can also be triggered manually from the Actions tab.

## Development

```sh
bundle install
bundle exec rspec spec/client_spec.rb spec/auth/auth_spec.rb spec/http/http_spec.rb spec/profiles/profile_spec.rb
```

## License

Apache-2.0 — see [LICENSE](LICENSE).
