# AzureRest::VirtualMachineDiagnosticRunCommandsListResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | [**Array&lt;VirtualMachineDiagnosticRunCommand&gt;**](VirtualMachineDiagnosticRunCommand.md) | The list of diagnostic run commands. |  |
| **next_link** | **String** | The uri to fetch the next page of diagnostic run commands. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::VirtualMachineDiagnosticRunCommandsListResult.new(
  value: null,
  next_link: null
)
```

