# AzureSDK::VirtualMachineRunCommandInstanceView

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **execution_state** | [**ExecutionState**](ExecutionState.md) |  | [optional] |
| **execution_message** | **String** | Communicate script configuration errors or execution messages. | [optional] |
| **exit_code** | **Integer** | Exit code returned from script execution. | [optional] |
| **output** | **String** | Script output stream. | [optional] |
| **error** | **String** | Script error stream. | [optional] |
| **start_time** | **Time** | Script start time. | [optional] |
| **end_time** | **Time** | Script end time. | [optional] |
| **statuses** | [**Array&lt;InstanceViewStatus&gt;**](InstanceViewStatus.md) | The resource status information. | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::VirtualMachineRunCommandInstanceView.new(
  execution_state: null,
  execution_message: null,
  exit_code: null,
  output: null,
  error: null,
  start_time: null,
  end_time: null,
  statuses: null
)
```

