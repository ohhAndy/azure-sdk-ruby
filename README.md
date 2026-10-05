# azure_rest

Ruby gem for the Azure Resource Manager REST API, generated from the official
[Azure REST API OpenAPI specs](https://github.com/Azure/azure-rest-api-specs).

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

## Usage

```ruby
require "azure_rest"

# Example: list usage aggregates via the Commerce namespace
api    = AzureRest::Commerce::UsageAggregatesApi.new(api_client)
result = api.usage_aggregates_list(api_version, subscription_id, start_time, end_time)
```

## Namespaces

API and model classes are namespaced by ARM service. Each namespace has its own
`docs/` directory with per-class documentation.

| Namespace                          | Module                        | Docs                          |
|------------------------------------|-------------------------------|-------------------------------|
| `lib/azure_rest/compute/`           | `AzureRest::Compute`           | [docs/compute/](docs/compute/) |
| `lib/azure_rest/network/`           | `AzureRest::Network`           | [docs/network/](docs/network/) |
| `lib/azure_rest/storage/`           | `AzureRest::Storage`           | [docs/storage/](docs/storage/) |
| `lib/azure_rest/resources/`         | `AzureRest::Resources`         | [docs/resources/](docs/resources/) |
| `lib/azure_rest/key_vault/`         | `AzureRest::KeyVault`          | [docs/key_vault/](docs/key_vault/) |
| `lib/azure_rest/container_service/` | `AzureRest::ContainerService`  | [docs/container_service/](docs/container_service/) |
| `lib/azure_rest/sql/`               | `AzureRest::Sql`               | [docs/sql/](docs/sql/) |
| `lib/azure_rest/maria_db/`          | `AzureRest::MariaDB`           | [docs/maria_db/](docs/maria_db/) |
| `lib/azure_rest/my_sql/`            | `AzureRest::MySQL`             | [docs/my_sql/](docs/my_sql/) |
| `lib/azure_rest/postgre_sql/`       | `AzureRest::PostgreSQL`        | [docs/postgre_sql/](docs/postgre_sql/) |
| `lib/azure_rest/authorization/`     | `AzureRest::Authorization`     | [docs/authorization/](docs/authorization/) |
| `lib/azure_rest/insights/`          | `AzureRest::Insights`          | [docs/insights/](docs/insights/) |
| `lib/azure_rest/hd_insight/`        | `AzureRest::HDInsight`         | [docs/hd_insight/](docs/hd_insight/) |
| `lib/azure_rest/commerce/`          | `AzureRest::Commerce`          | [docs/commerce/](docs/commerce/) |

## Regenerating

The SDK is generated from the latest stable Azure OpenAPI specs using
[openapi-generator](https://openapi-generator.tech/). To regenerate:

```sh
# Requires: java, curl or wget
bin/openapi-generate
```

The script auto-downloads the latest `openapi-generator-cli` JAR from Maven
Central (or uses a cached copy), resolves the latest stable spec URL for each
ARM namespace, and writes all generated files into `lib/azure_rest/<namespace>/`.

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
