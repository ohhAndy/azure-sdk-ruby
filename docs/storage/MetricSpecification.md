# AzureRest::MetricSpecification

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of metric specification. | [optional] |
| **display_name** | **String** | Display name of metric specification. | [optional] |
| **display_description** | **String** | Display description of metric specification. | [optional] |
| **unit** | **String** | Unit could be Bytes or Count. | [optional] |
| **dimensions** | [**Array&lt;Dimension&gt;**](Dimension.md) | Dimensions of blobs, including blob type and access tier. | [optional] |
| **aggregation_type** | **String** | Aggregation type could be Average. | [optional] |
| **fill_gap_with_zero** | **Boolean** | The property to decide fill gap with zero or not. | [optional] |
| **category** | **String** | The category this metric specification belong to, could be Capacity. | [optional] |
| **resource_id_dimension_name_override** | **String** | Account Resource Id. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::MetricSpecification.new(
  name: null,
  display_name: null,
  display_description: null,
  unit: null,
  dimensions: null,
  aggregation_type: null,
  fill_gap_with_zero: null,
  category: null,
  resource_id_dimension_name_override: null
)
```

