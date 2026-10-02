# AzureSDK::VirtualMachineSize

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name of the virtual machine size. | [optional] |
| **number_of_cores** | **Integer** | The number of cores supported by the virtual machine size. For Constrained vCPU capable VM sizes, this number represents the total vCPUs of quota that the VM uses. For accurate vCPU count, please refer to https://docs.microsoft.com/azure/virtual-machines/constrained-vcpu or https://docs.microsoft.com/rest/api/compute/resourceskus/list | [optional] |
| **os_disk_size_in_mb** | **Integer** | The OS disk size, in MB, allowed by the virtual machine size. | [optional] |
| **resource_disk_size_in_mb** | **Integer** | The resource disk size, in MB, allowed by the virtual machine size. | [optional] |
| **memory_in_mb** | **Integer** | The amount of memory, in MB, supported by the virtual machine size. | [optional] |
| **max_data_disk_count** | **Integer** | The maximum number of data disks that can be attached to the virtual machine size. | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::VirtualMachineSize.new(
  name: null,
  number_of_cores: null,
  os_disk_size_in_mb: null,
  resource_disk_size_in_mb: null,
  memory_in_mb: null,
  max_data_disk_count: null
)
```

