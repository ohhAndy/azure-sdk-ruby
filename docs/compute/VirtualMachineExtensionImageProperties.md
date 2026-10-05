# AzureRest::VirtualMachineExtensionImageProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **operating_system** | **String** | The operating system this extension supports. |  |
| **compute_role** | **String** | The type of role (IaaS or PaaS) this extension supports. |  |
| **handler_schema** | **String** | The schema defined by publisher, where extension consumers should provide settings in a matching schema. |  |
| **vm_scale_set_enabled** | **Boolean** | Whether the extension can be used on xRP VMScaleSets. By default existing extensions are usable on scalesets, but there might be cases where a publisher wants to explicitly indicate the extension is only enabled for CRP VMs but not VMSS. | [optional] |
| **supports_multiple_extensions** | **Boolean** | Whether the handler can support multiple extensions. | [optional] |
| **release_notes** | **String** | Summary of changes or updates in this extension version. | [optional][readonly] |
| **release_category** | [**ReleaseCategory**](ReleaseCategory.md) |  | [optional] |
| **urgency_level** | [**UrgencyLevel**](UrgencyLevel.md) |  | [optional] |
| **run_profile** | [**RunProfile**](RunProfile.md) |  | [optional] |
| **extension_feature_metadata** | [**ExtensionFeatureMetadata**](ExtensionFeatureMetadata.md) |  | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::VirtualMachineExtensionImageProperties.new(
  operating_system: null,
  compute_role: null,
  handler_schema: null,
  vm_scale_set_enabled: null,
  supports_multiple_extensions: null,
  release_notes: null,
  release_category: null,
  urgency_level: null,
  run_profile: null,
  extension_feature_metadata: null
)
```

