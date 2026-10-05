# AzureRest::MySQLServerSku

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name of the sku, e.g. Standard_D32s_v3. |  |
| **tier** | [**ServerSkuTier**](ServerSkuTier.md) |  |  |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::MySQLServerSku.new(
  name: null,
  tier: null
)
```

