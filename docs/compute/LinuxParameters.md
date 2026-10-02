# AzureSDK::LinuxParameters

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **classifications_to_include** | [**Array&lt;VMGuestPatchClassificationLinux&gt;**](VMGuestPatchClassificationLinux.md) | The update classifications to select when installing patches for Linux. | [optional] |
| **package_name_masks_to_include** | **Array&lt;String&gt;** | packages to include in the patch operation. Format: packageName_packageVersion | [optional] |
| **package_name_masks_to_exclude** | **Array&lt;String&gt;** | packages to exclude in the patch operation. Format: packageName_packageVersion | [optional] |
| **maintenance_run_id** | **String** | This is used as a maintenance run identifier for Auto VM Guest Patching in Linux. | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::LinuxParameters.new(
  classifications_to_include: null,
  package_name_masks_to_include: null,
  package_name_masks_to_exclude: null,
  maintenance_run_id: null
)
```

