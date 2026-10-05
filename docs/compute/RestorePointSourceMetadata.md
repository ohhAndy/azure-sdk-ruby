# AzureRest::RestorePointSourceMetadata

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **hardware_profile** | [**HardwareProfile**](HardwareProfile.md) |  | [optional] |
| **storage_profile** | [**RestorePointSourceVMStorageProfile**](RestorePointSourceVMStorageProfile.md) |  | [optional] |
| **os_profile** | [**OSProfile**](OSProfile.md) |  | [optional] |
| **diagnostics_profile** | [**DiagnosticsProfile**](DiagnosticsProfile.md) |  | [optional] |
| **license_type** | **String** | Gets the license type, which is for bring your own license scenario. | [optional][readonly] |
| **vm_id** | **String** | Gets the virtual machine unique id. | [optional][readonly] |
| **security_profile** | [**SecurityProfile**](SecurityProfile.md) |  | [optional] |
| **location** | **String** | Location of the VM from which the restore point was created. | [optional][readonly] |
| **user_data** | **String** | UserData associated with the source VM for which restore point is captured, which is a base-64 encoded value. | [optional][readonly] |
| **hyper_v_generation** | [**HyperVGenerationTypes**](HyperVGenerationTypes.md) |  | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::RestorePointSourceMetadata.new(
  hardware_profile: null,
  storage_profile: null,
  os_profile: null,
  diagnostics_profile: null,
  license_type: null,
  vm_id: null,
  security_profile: null,
  location: null,
  user_data: null,
  hyper_v_generation: null
)
```

