# AzureRest::Usage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Resource identifier. | [optional][readonly] |
| **unit** | [**UsageUnit**](UsageUnit.md) |  |  |
| **current_value** | **Integer** | The current value of the usage. |  |
| **limit** | **Integer** | The limit of usage. |  |
| **name** | [**UsageName**](UsageName.md) |  |  |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::Usage.new(
  id: null,
  unit: null,
  current_value: null,
  limit: null,
  name: null
)
```

