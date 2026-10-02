# AzureSDK::ServerSku

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Compute tier and size of the database server. This object is empty for an Azure Database for PostgreSQL single server. | [optional] |
| **tier** | [**SkuTier**](SkuTier.md) |  | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::ServerSku.new(
  name: null,
  tier: null
)
```

