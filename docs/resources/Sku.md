# AzureRest::Sku

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The SKU name. | [optional] |
| **tier** | **String** | The SKU tier. | [optional] |
| **size** | **String** | The SKU size. | [optional] |
| **family** | **String** | The SKU family. | [optional] |
| **model** | **String** | The SKU model. | [optional] |
| **capacity** | **Integer** | The SKU capacity. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::Sku.new(
  name: null,
  tier: null,
  size: null,
  family: null,
  model: null,
  capacity: null
)
```

