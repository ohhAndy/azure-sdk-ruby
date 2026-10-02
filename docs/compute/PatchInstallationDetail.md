# AzureSDK::PatchInstallationDetail

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **patch_id** | **String** | A unique identifier for the patch. | [optional][readonly] |
| **name** | **String** | The friendly name of the patch. | [optional][readonly] |
| **version** | **String** | The version string of the package. It may conform to Semantic Versioning. Only applies to Linux. | [optional][readonly] |
| **kb_id** | **String** | The KBID of the patch. Only applies to Windows patches. | [optional][readonly] |
| **classifications** | **Array&lt;String&gt;** | The classification(s) of the patch as provided by the patch publisher. | [optional][readonly] |
| **installation_state** | [**PatchInstallationState**](PatchInstallationState.md) |  | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::PatchInstallationDetail.new(
  patch_id: null,
  name: null,
  version: null,
  kb_id: null,
  classifications: null,
  installation_state: null
)
```

