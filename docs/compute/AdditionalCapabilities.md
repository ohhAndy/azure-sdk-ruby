# AzureSDK::AdditionalCapabilities

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ultra_ssd_enabled** | **Boolean** | The flag that enables or disables a capability to have one or more managed data disks with UltraSSD_LRS storage account type on the VM or VMSS. Managed disks with storage account type UltraSSD_LRS can be added to a virtual machine or virtual machine scale set only if this property is enabled. | [optional] |
| **hibernation_enabled** | **Boolean** | The flag that enables or disables hibernation capability on the VM. | [optional] |
| **enable_fips1403_encryption** | **Boolean** | The flag enables the usage of FIPS 140-3 compliant cryptography on the protectedSettings of an extension. Learn more at: https://aka.ms/linuxagentfipssupport. | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::AdditionalCapabilities.new(
  ultra_ssd_enabled: null,
  hibernation_enabled: null,
  enable_fips1403_encryption: null
)
```

