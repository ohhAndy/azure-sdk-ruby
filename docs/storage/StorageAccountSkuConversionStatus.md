# AzureRest::StorageAccountSkuConversionStatus

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sku_conversion_status** | [**SkuConversionStatus**](SkuConversionStatus.md) |  | [optional] |
| **target_sku_name** | [**SkuName**](SkuName.md) |  | [optional] |
| **start_time** | **String** | This property represents the sku conversion start time. | [optional][readonly] |
| **end_time** | **String** | This property represents the sku conversion end time. | [optional][readonly] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::StorageAccountSkuConversionStatus.new(
  sku_conversion_status: null,
  target_sku_name: null,
  start_time: null,
  end_time: null
)
```

