# AzureRest::Usage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **unit** | [**UsageUnit**](UsageUnit.md) |  | [optional] |
| **current_value** | **Integer** | Gets the current count of the allocated resources in the subscription. | [optional][readonly] |
| **limit** | **Integer** | Gets the maximum count of the resources that can be allocated in the subscription. | [optional][readonly] |
| **name** | [**UsageName**](UsageName.md) |  | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::Usage.new(
  unit: null,
  current_value: null,
  limit: null,
  name: null
)
```

