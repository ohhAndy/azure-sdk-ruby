# AzureSDK::Usage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **unit** | **String** | An enum describing the unit of usage measurement. |  |
| **current_value** | **Integer** | The current usage of the resource. |  |
| **limit** | **Integer** | The maximum permitted usage of the resource. |  |
| **name** | [**UsageName**](UsageName.md) |  |  |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::Usage.new(
  unit: null,
  current_value: null,
  limit: null,
  name: null
)
```

