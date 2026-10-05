# AzureRest::VirtualMachinePatchStatus

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **available_patch_summary** | [**AvailablePatchSummary**](AvailablePatchSummary.md) |  | [optional] |
| **last_patch_installation_summary** | [**LastPatchInstallationSummary**](LastPatchInstallationSummary.md) |  | [optional] |
| **configuration_statuses** | [**Array&lt;InstanceViewStatus&gt;**](InstanceViewStatus.md) | The enablement status of the specified patchMode | [optional][readonly] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::VirtualMachinePatchStatus.new(
  available_patch_summary: null,
  last_patch_installation_summary: null,
  configuration_statuses: null
)
```

