# AzureSDK::VirtualMachineAssessPatchesResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | [**PatchOperationStatus**](PatchOperationStatus.md) |  | [optional] |
| **assessment_activity_id** | **String** | The activity ID of the operation that produced this result. It is used to correlate across CRP and extension logs. | [optional][readonly] |
| **reboot_pending** | **Boolean** | The overall reboot status of the VM. It will be true when partially installed patches require a reboot to complete installation but the reboot has not yet occurred. | [optional][readonly] |
| **critical_and_security_patch_count** | **Integer** | The number of critical or security patches that have been detected as available and not yet installed. | [optional][readonly] |
| **other_patch_count** | **Integer** | The number of all available patches excluding critical and security. | [optional][readonly] |
| **start_date_time** | **Time** | The UTC timestamp when the operation began. | [optional][readonly] |
| **available_patches** | [**Array&lt;VirtualMachineSoftwarePatchProperties&gt;**](VirtualMachineSoftwarePatchProperties.md) | The list of patches that have been detected as available for installation. | [optional][readonly] |
| **error** | [**ApiError**](ApiError.md) |  | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::VirtualMachineAssessPatchesResult.new(
  status: null,
  assessment_activity_id: null,
  reboot_pending: null,
  critical_and_security_patch_count: null,
  other_patch_count: null,
  start_date_time: null,
  available_patches: null,
  error: null
)
```

