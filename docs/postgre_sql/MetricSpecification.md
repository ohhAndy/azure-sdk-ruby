# AzureSDK::MetricSpecification

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of the metric. | [optional] |
| **display_name** | **String** | Display name of the metric. | [optional] |
| **display_description** | **String** | Display description of the metric. | [optional] |
| **unit** | **String** | Unit of the metric. | [optional] |
| **aggregation_type** | **String** | Aggregation type of the metric. | [optional] |
| **supported_aggregation_types** | **Array&lt;String&gt;** | Supported aggregation types for the metric. | [optional] |
| **supported_time_grain_types** | **Array&lt;String&gt;** | Supported time grain types for the metric. | [optional] |
| **category** | **String** | Category of the metric. | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::MetricSpecification.new(
  name: null,
  display_name: null,
  display_description: null,
  unit: null,
  aggregation_type: null,
  supported_aggregation_types: null,
  supported_time_grain_types: null,
  category: null
)
```

