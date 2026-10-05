# AzureRest::UsageAggregation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique Id for the usage aggregate. | [optional] |
| **name** | **String** | Name of the usage aggregate. | [optional] |
| **type** | **String** | Type of the resource being returned. | [optional] |
| **properties** | [**UsageSample**](UsageSample.md) |  | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::UsageAggregation.new(
  id: null,
  name: null,
  type: null,
  properties: null
)
```

