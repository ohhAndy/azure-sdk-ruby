# AzureRest::PatchSettings

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **patch_mode** | [**WindowsVMGuestPatchMode**](WindowsVMGuestPatchMode.md) |  | [optional] |
| **enable_hotpatching** | **Boolean** | Enables customers to patch their Azure VMs without requiring a reboot. For enableHotpatching, the &#39;provisionVMAgent&#39; must be set to true and &#39;patchMode&#39; must be set to &#39;AutomaticByPlatform&#39;. | [optional] |
| **assessment_mode** | [**WindowsPatchAssessmentMode**](WindowsPatchAssessmentMode.md) |  | [optional] |
| **automatic_by_platform_settings** | [**WindowsVMGuestPatchAutomaticByPlatformSettings**](WindowsVMGuestPatchAutomaticByPlatformSettings.md) |  | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::PatchSettings.new(
  patch_mode: null,
  enable_hotpatching: null,
  assessment_mode: null,
  automatic_by_platform_settings: null
)
```

