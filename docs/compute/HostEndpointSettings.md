# AzureSDK::HostEndpointSettings

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **mode** | [**Modes**](Modes.md) |  | [optional] |
| **in_vm_access_control_profile_reference_id** | **String** | Specifies the InVMAccessControlProfileVersion resource id in the format of /subscriptions/{SubscriptionId}/resourceGroups/{ResourceGroupName}/providers/Microsoft.Compute/galleries/{galleryName}/inVMAccessControlProfiles/{profile}/versions/{version} | [optional] |
| **use_local_file_rules** | **Boolean** | When set to true, instructs the GuestProxyAgent inside the VM to load additional access control rules defined in a local file on the VM. | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::HostEndpointSettings.new(
  mode: null,
  in_vm_access_control_profile_reference_id: null,
  use_local_file_rules: null
)
```

