# AzureSDK::WindowsParameters

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **classifications_to_include** | [**Array&lt;VMGuestPatchClassificationWindows&gt;**](VMGuestPatchClassificationWindows.md) | The update classifications to select when installing patches for Windows. | [optional] |
| **kb_numbers_to_include** | **Array&lt;String&gt;** | Kbs to include in the patch operation | [optional] |
| **kb_numbers_to_exclude** | **Array&lt;String&gt;** | Kbs to exclude in the patch operation | [optional] |
| **exclude_kbs_requiring_reboot** | **Boolean** | Filters out Kbs that don&#39;t have an InstallationRebootBehavior of &#39;NeverReboots&#39; when this is set to true. | [optional] |
| **max_patch_publish_date** | **Time** | This is used to install patches that were published on or before this given max published date. | [optional] |
| **patch_name_masks_to_include** | **Array&lt;String&gt;** | This is used to include patches that match the given patch name masks. Alphanumeric strings and wildcard expressions consisting of * and ? are only supported as input values in the list. Null, empty and only whitespaces strings as inputs values are not supported. | [optional] |
| **patch_name_masks_to_exclude** | **Array&lt;String&gt;** | This is used to exclude patches that match the given patch name masks. Alphanumeric strings and wildcard expressions consisting of * and ? are only supported as input values in the list. Null, empty and only whitespaces strings as inputs values are not supported. | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::WindowsParameters.new(
  classifications_to_include: null,
  kb_numbers_to_include: null,
  kb_numbers_to_exclude: null,
  exclude_kbs_requiring_reboot: null,
  max_patch_publish_date: null,
  patch_name_masks_to_include: null,
  patch_name_masks_to_exclude: null
)
```

