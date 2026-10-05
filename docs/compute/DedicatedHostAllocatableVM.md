# AzureRest::DedicatedHostAllocatableVM

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vm_size** | **String** | VM size in terms of which the unutilized capacity is represented. | [optional] |
| **count** | **Float** | Maximum number of VMs of size vmSize that can fit in the dedicated host&#39;s remaining capacity. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::DedicatedHostAllocatableVM.new(
  vm_size: null,
  count: null
)
```

