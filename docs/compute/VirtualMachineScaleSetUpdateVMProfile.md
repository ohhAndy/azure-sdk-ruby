# AzureSDK::VirtualMachineScaleSetUpdateVMProfile

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **os_profile** | [**VirtualMachineScaleSetUpdateOSProfile**](VirtualMachineScaleSetUpdateOSProfile.md) |  | [optional] |
| **storage_profile** | [**VirtualMachineScaleSetUpdateStorageProfile**](VirtualMachineScaleSetUpdateStorageProfile.md) |  | [optional] |
| **network_profile** | [**VirtualMachineScaleSetUpdateNetworkProfile**](VirtualMachineScaleSetUpdateNetworkProfile.md) |  | [optional] |
| **security_posture_reference** | [**SecurityPostureReferenceUpdate**](SecurityPostureReferenceUpdate.md) |  | [optional] |
| **security_profile** | [**SecurityProfile**](SecurityProfile.md) |  | [optional] |
| **diagnostics_profile** | [**DiagnosticsProfile**](DiagnosticsProfile.md) |  | [optional] |
| **extension_profile** | [**VirtualMachineScaleSetExtensionProfile**](VirtualMachineScaleSetExtensionProfile.md) |  | [optional] |
| **license_type** | **String** | The license type, which is for bring your own license scenario. | [optional] |
| **billing_profile** | [**BillingProfile**](BillingProfile.md) |  | [optional] |
| **scheduled_events_profile** | [**ScheduledEventsProfile**](ScheduledEventsProfile.md) |  | [optional] |
| **user_data** | **String** | UserData for the VM, which must be base-64 encoded. Customer should not pass any secrets in here. &lt;br&gt;&lt;br&gt;Minimum api-version: 2021-03-01 | [optional] |
| **hardware_profile** | [**VirtualMachineScaleSetHardwareProfile**](VirtualMachineScaleSetHardwareProfile.md) |  | [optional] |
| **interconnect_block_profile** | [**InterconnectBlockProfile**](InterconnectBlockProfile.md) |  | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::VirtualMachineScaleSetUpdateVMProfile.new(
  os_profile: null,
  storage_profile: null,
  network_profile: null,
  security_posture_reference: null,
  security_profile: null,
  diagnostics_profile: null,
  extension_profile: null,
  license_type: null,
  billing_profile: null,
  scheduled_events_profile: null,
  user_data: null,
  hardware_profile: null,
  interconnect_block_profile: null
)
```

