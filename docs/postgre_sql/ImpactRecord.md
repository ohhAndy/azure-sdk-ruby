# AzureSDK::ImpactRecord

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **dimension_name** | **String** | Dimension name. | [optional] |
| **unit** | **String** | Dimension unit. | [optional] |
| **query_id** | **Integer** | Optional property that can be used to store the identifier of the query, if the metric is for a specific query. | [optional] |
| **absolute_value** | **Float** | Absolute value. | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::ImpactRecord.new(
  dimension_name: null,
  unit: null,
  query_id: null,
  absolute_value: null
)
```

