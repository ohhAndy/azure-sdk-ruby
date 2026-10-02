# AzureSDK::VirtualMachineRunCommandsListResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | [**Array&lt;VirtualMachineRunCommand&gt;**](VirtualMachineRunCommand.md) | The list of run commands. |  |
| **next_link** | **String** | The uri to fetch the next page of run commands. | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::VirtualMachineRunCommandsListResult.new(
  value: null,
  next_link: null
)
```

