# AzureSDK::LastPatchInstallationSummary

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | [**PatchOperationStatus**](PatchOperationStatus.md) |  | [optional] |
| **installation_activity_id** | **String** | The activity ID of the operation that produced this result. It is used to correlate across CRP and extension logs. | [optional][readonly] |
| **maintenance_window_exceeded** | **Boolean** | Describes whether the operation ran out of time before it completed all its intended actions | [optional][readonly] |
| **not_selected_patch_count** | **Integer** | The number of all available patches but not going to be installed because it didn&#39;t match a classification or inclusion list entry. | [optional][readonly] |
| **excluded_patch_count** | **Integer** | The number of all available patches but excluded explicitly by a customer-specified exclusion list match. | [optional][readonly] |
| **pending_patch_count** | **Integer** | The number of all available patches expected to be installed over the course of the patch installation operation. | [optional][readonly] |
| **installed_patch_count** | **Integer** | The count of patches that successfully installed. | [optional][readonly] |
| **failed_patch_count** | **Integer** | The count of patches that failed installation. | [optional][readonly] |
| **start_time** | **Time** | The UTC timestamp when the operation began. | [optional][readonly] |
| **last_modified_time** | **Time** | The UTC timestamp when the operation began. | [optional][readonly] |
| **error** | [**ApiError**](ApiError.md) |  | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::LastPatchInstallationSummary.new(
  status: null,
  installation_activity_id: null,
  maintenance_window_exceeded: null,
  not_selected_patch_count: null,
  excluded_patch_count: null,
  pending_patch_count: null,
  installed_patch_count: null,
  failed_patch_count: null,
  start_time: null,
  last_modified_time: null,
  error: null
)
```

