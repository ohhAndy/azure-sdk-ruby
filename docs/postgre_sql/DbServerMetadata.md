# AzureSDK::DbServerMetadata

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **location** | **String** | Location of database server. | [optional][readonly] |
| **version** | **String** | Major version of PostgreSQL database engine. | [optional] |
| **storage_mb** | **Integer** | Storage size (in MB) for database server. | [optional] |
| **sku** | [**ServerSku**](ServerSku.md) |  | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::DbServerMetadata.new(
  location: null,
  version: null,
  storage_mb: null,
  sku: null
)
```

