# AzureRest::DedicatedHostAvailableCapacity

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **allocatable_vms** | [**Array&lt;DedicatedHostAllocatableVM&gt;**](DedicatedHostAllocatableVM.md) | The unutilized capacity of the dedicated host represented in terms of each VM size that is allowed to be deployed to the dedicated host. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::DedicatedHostAvailableCapacity.new(
  allocatable_vms: null
)
```

