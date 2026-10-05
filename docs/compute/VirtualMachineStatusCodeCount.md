# AzureRest::VirtualMachineStatusCodeCount

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **String** | The instance view status code. | [optional][readonly] |
| **count** | **Integer** | The number of instances having a particular status code. | [optional][readonly] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::VirtualMachineStatusCodeCount.new(
  code: null,
  count: null
)
```

