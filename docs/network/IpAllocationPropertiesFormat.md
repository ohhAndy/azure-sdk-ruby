# AzureSDK::IpAllocationPropertiesFormat

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subnet** | [**SubResource**](SubResource.md) |  | [optional] |
| **virtual_network** | [**SubResource**](SubResource.md) |  | [optional] |
| **type** | [**IpAllocationType**](IpAllocationType.md) |  | [optional] |
| **prefix** | **String** | The address prefix for the IpAllocation. | [optional] |
| **prefix_length** | **Integer** | The address prefix length for the IpAllocation. | [optional][default to 0] |
| **prefix_type** | [**IPVersion**](IPVersion.md) |  | [optional] |
| **ipam_allocation_id** | **String** | The IPAM allocation ID. | [optional] |
| **allocation_tags** | **Hash&lt;String, String&gt;** | IpAllocation tags. | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::IpAllocationPropertiesFormat.new(
  subnet: null,
  virtual_network: null,
  type: null,
  prefix: null,
  prefix_length: null,
  prefix_type: null,
  ipam_allocation_id: null,
  allocation_tags: null
)
```

