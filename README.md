# azure_sdk

Ruby gem for the Azure Resource Manager REST API, generated from the official
[Azure REST API OpenAPI specs](https://github.com/Azure/azure-rest-api-specs).

## Requirements

- Ruby >= 2.7
- Java (for regenerating from source specs)

## Installation

Add to your `Gemfile`:

```ruby
gem "azure_sdk"
```

Or install directly:

```sh
gem install azure_sdk
```

## Usage

```ruby
require "azure_sdk"

# Example: list usage aggregates via the Commerce namespace
api    = AzureSDK::Commerce::UsageAggregatesApi.new(api_client)
result = api.usage_aggregates_list(api_version, subscription_id, start_time, end_time)
```

## Namespaces

API and model classes are namespaced by ARM service. Each namespace has its own
`docs/` directory with per-class documentation.

| Namespace                          | Module                        | Docs                          |
|------------------------------------|-------------------------------|-------------------------------|
| `lib/azure_sdk/compute/`           | `AzureSDK::Compute`           | [docs/compute/](docs/compute/) |
| `lib/azure_sdk/network/`           | `AzureSDK::Network`           | [docs/network/](docs/network/) |
| `lib/azure_sdk/storage/`           | `AzureSDK::Storage`           | [docs/storage/](docs/storage/) |
| `lib/azure_sdk/resources/`         | `AzureSDK::Resources`         | [docs/resources/](docs/resources/) |
| `lib/azure_sdk/key_vault/`         | `AzureSDK::KeyVault`          | [docs/key_vault/](docs/key_vault/) |
| `lib/azure_sdk/container_service/` | `AzureSDK::ContainerService`  | [docs/container_service/](docs/container_service/) |
| `lib/azure_sdk/sql/`               | `AzureSDK::Sql`               | [docs/sql/](docs/sql/) |
| `lib/azure_sdk/maria_db/`          | `AzureSDK::MariaDB`           | [docs/maria_db/](docs/maria_db/) |
| `lib/azure_sdk/my_sql/`            | `AzureSDK::MySQL`             | [docs/my_sql/](docs/my_sql/) |
| `lib/azure_sdk/postgre_sql/`       | `AzureSDK::PostgreSQL`        | [docs/postgre_sql/](docs/postgre_sql/) |
| `lib/azure_sdk/authorization/`     | `AzureSDK::Authorization`     | [docs/authorization/](docs/authorization/) |
| `lib/azure_sdk/insights/`          | `AzureSDK::Insights`          | [docs/insights/](docs/insights/) |
| `lib/azure_sdk/hd_insight/`        | `AzureSDK::HDInsight`         | [docs/hd_insight/](docs/hd_insight/) |
| `lib/azure_sdk/commerce/`          | `AzureSDK::Commerce`          | [docs/commerce/](docs/commerce/) |

## Regenerating

The SDK is generated from the latest stable Azure OpenAPI specs using
[openapi-generator](https://openapi-generator.tech/). To regenerate:

```sh
# Requires: java, curl or wget
bin/openapi-generate
```

The script auto-downloads the latest `openapi-generator-cli` JAR from Maven
Central (or uses a cached copy), resolves the latest stable spec URL for each
ARM namespace, and writes all generated files into `lib/azure_sdk/<namespace>/`.

Set `GITHUB_TOKEN` to avoid GitHub API rate limits:

```sh
GITHUB_TOKEN=ghp_... bin/openapi-generate
```

Pin a specific generator version:

```sh
OPENAPI_GENERATOR_JAR=openapi-generator-cli-7.25.0.jar bin/openapi-generate
```

## CI

A GitHub Actions workflow (`.github/workflows/generate.yml`) runs every Sunday
and opens a pull request when the upstream specs have changed. It can also be
triggered manually from the Actions tab.

## Development

```sh
bundle install
bundle exec rspec
```

## License

Apache-2.0 — see [LICENSE](LICENSE).
