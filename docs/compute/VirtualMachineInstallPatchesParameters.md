# AzureRest::VirtualMachineInstallPatchesParameters

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **maximum_duration** | **String** | Specifies the maximum amount of time that the operation will run. It must be an ISO 8601-compliant duration string such as PT4H (4 hours) | [optional] |
| **reboot_setting** | [**VMGuestPatchRebootSetting**](VMGuestPatchRebootSetting.md) |  |  |
| **windows_parameters** | [**WindowsParameters**](WindowsParameters.md) |  | [optional] |
| **linux_parameters** | [**LinuxParameters**](LinuxParameters.md) |  | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::VirtualMachineInstallPatchesParameters.new(
  maximum_duration: null,
  reboot_setting: null,
  windows_parameters: null,
  linux_parameters: null
)
```

