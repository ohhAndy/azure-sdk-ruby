# AzureRest::LinuxPatchSettings

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **patch_mode** | [**LinuxVMGuestPatchMode**](LinuxVMGuestPatchMode.md) |  | [optional] |
| **assessment_mode** | [**LinuxPatchAssessmentMode**](LinuxPatchAssessmentMode.md) |  | [optional] |
| **automatic_by_platform_settings** | [**LinuxVMGuestPatchAutomaticByPlatformSettings**](LinuxVMGuestPatchAutomaticByPlatformSettings.md) |  | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::LinuxPatchSettings.new(
  patch_mode: null,
  assessment_mode: null,
  automatic_by_platform_settings: null
)
```

