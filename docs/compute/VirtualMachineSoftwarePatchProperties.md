# AzureRest::VirtualMachineSoftwarePatchProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **patch_id** | **String** | A unique identifier for the patch. | [optional][readonly] |
| **name** | **String** | The friendly name of the patch. | [optional][readonly] |
| **version** | **String** | The version number of the patch. This property applies only to Linux patches. | [optional][readonly] |
| **kb_id** | **String** | The KBID of the patch. Only applies to Windows patches. | [optional][readonly] |
| **classifications** | **Array&lt;String&gt;** | The classification(s) of the patch as provided by the patch publisher. | [optional][readonly] |
| **reboot_behavior** | [**VMGuestPatchRebootBehavior**](VMGuestPatchRebootBehavior.md) |  | [optional] |
| **activity_id** | **String** | The activity ID of the operation that produced this result. It is used to correlate across CRP and extension logs. | [optional][readonly] |
| **published_date** | **Time** | The UTC timestamp when the repository published this patch. | [optional][readonly] |
| **last_modified_date_time** | **Time** | The UTC timestamp of the last update to this patch record. | [optional][readonly] |
| **assessment_state** | [**PatchAssessmentState**](PatchAssessmentState.md) |  | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::VirtualMachineSoftwarePatchProperties.new(
  patch_id: null,
  name: null,
  version: null,
  kb_id: null,
  classifications: null,
  reboot_behavior: null,
  activity_id: null,
  published_date: null,
  last_modified_date_time: null,
  assessment_state: null
)
```

