# AzureSDK::AvailablePatchSummary

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | [**PatchOperationStatus**](PatchOperationStatus.md) |  | [optional] |
| **assessment_activity_id** | **String** | The activity ID of the operation that produced this result. It is used to correlate across CRP and extension logs. | [optional][readonly] |
| **reboot_pending** | **Boolean** | The overall reboot status of the VM. It will be true when partially installed patches require a reboot to complete installation but the reboot has not yet occurred. | [optional][readonly] |
| **critical_and_security_patch_count** | **Integer** | The number of critical or security patches that have been detected as available and not yet installed. | [optional][readonly] |
| **other_patch_count** | **Integer** | The number of all available patches excluding critical and security. | [optional][readonly] |
| **start_time** | **Time** | The UTC timestamp when the operation began. | [optional][readonly] |
| **last_modified_time** | **Time** | The UTC timestamp when the operation began. | [optional][readonly] |
| **error** | [**ApiError**](ApiError.md) |  | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::AvailablePatchSummary.new(
  status: null,
  assessment_activity_id: null,
  reboot_pending: null,
  critical_and_security_patch_count: null,
  other_patch_count: null,
  start_time: null,
  last_modified_time: null,
  error: null
)
```

