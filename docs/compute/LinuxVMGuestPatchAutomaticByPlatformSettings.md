# AzureSDK::LinuxVMGuestPatchAutomaticByPlatformSettings

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **reboot_setting** | [**LinuxVMGuestPatchAutomaticByPlatformRebootSetting**](LinuxVMGuestPatchAutomaticByPlatformRebootSetting.md) |  | [optional] |
| **bypass_platform_safety_checks_on_user_schedule** | **Boolean** | Enables customer to schedule patching without accidental upgrades | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::LinuxVMGuestPatchAutomaticByPlatformSettings.new(
  reboot_setting: null,
  bypass_platform_safety_checks_on_user_schedule: null
)
```

