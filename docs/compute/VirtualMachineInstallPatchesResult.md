# AzureRest::VirtualMachineInstallPatchesResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | [**PatchOperationStatus**](PatchOperationStatus.md) |  | [optional] |
| **installation_activity_id** | **String** | The activity ID of the operation that produced this result. It is used to correlate across CRP and extension logs. | [optional][readonly] |
| **reboot_status** | [**VMGuestPatchRebootStatus**](VMGuestPatchRebootStatus.md) |  | [optional] |
| **maintenance_window_exceeded** | **Boolean** | Whether the operation ran out of time before it completed all its intended actions. | [optional][readonly] |
| **excluded_patch_count** | **Integer** | The number of patches that were not installed due to the user blocking their installation. | [optional][readonly] |
| **not_selected_patch_count** | **Integer** | The number of patches that were detected as available for install, but did not meet the operation&#39;s criteria. | [optional][readonly] |
| **pending_patch_count** | **Integer** | The number of patches that were identified as meeting the installation criteria, but were not able to be installed. Typically this happens when maintenanceWindowExceeded &#x3D;&#x3D; true. | [optional][readonly] |
| **installed_patch_count** | **Integer** | The number of patches successfully installed. | [optional][readonly] |
| **failed_patch_count** | **Integer** | The number of patches that could not be installed due to some issue. See errors for details. | [optional][readonly] |
| **patches** | [**Array&lt;PatchInstallationDetail&gt;**](PatchInstallationDetail.md) | The patches that were installed during the operation. | [optional][readonly] |
| **start_date_time** | **Time** | The UTC timestamp when the operation began. | [optional][readonly] |
| **error** | [**ApiError**](ApiError.md) |  | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::VirtualMachineInstallPatchesResult.new(
  status: null,
  installation_activity_id: null,
  reboot_status: null,
  maintenance_window_exceeded: null,
  excluded_patch_count: null,
  not_selected_patch_count: null,
  pending_patch_count: null,
  installed_patch_count: null,
  failed_patch_count: null,
  patches: null,
  start_date_time: null,
  error: null
)
```

