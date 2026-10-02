# AzureSDK::AddressSpace

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address_prefixes** | **Array&lt;String&gt;** | A list of address blocks reserved for this virtual network in CIDR notation. | [optional] |
| **ipam_pool_prefix_allocations** | [**Array&lt;IpamPoolPrefixAllocation&gt;**](IpamPoolPrefixAllocation.md) | A list of IPAM Pools allocating IP address prefixes. | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::AddressSpace.new(
  address_prefixes: null,
  ipam_pool_prefix_allocations: null
)
```

