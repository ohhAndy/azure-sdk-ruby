# AzureRest::VirtualMachineScaleSetUpdateOSProfile

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **custom_data** | **String** | A base-64 encoded string of custom data. | [optional] |
| **windows_configuration** | [**WindowsConfiguration**](WindowsConfiguration.md) |  | [optional] |
| **linux_configuration** | [**LinuxConfiguration**](LinuxConfiguration.md) |  | [optional] |
| **secrets** | [**Array&lt;VaultSecretGroup&gt;**](VaultSecretGroup.md) | The List of certificates for addition to the VM. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::VirtualMachineScaleSetUpdateOSProfile.new(
  custom_data: null,
  windows_configuration: null,
  linux_configuration: null,
  secrets: null
)
```

