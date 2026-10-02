# AzureSDK::CommandResultProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **provisioning_state** | **String** | provisioning State | [optional][readonly] |
| **exit_code** | **Integer** | The exit code of the command | [optional][readonly] |
| **started_at** | **Time** | The time when the command started. | [optional][readonly] |
| **finished_at** | **Time** | The time when the command finished. | [optional][readonly] |
| **logs** | **String** | The command output. | [optional][readonly] |
| **reason** | **String** | An explanation of why provisioningState is set to failed (if so). | [optional][readonly] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::CommandResultProperties.new(
  provisioning_state: null,
  exit_code: null,
  started_at: null,
  finished_at: null,
  logs: null,
  reason: null
)
```

