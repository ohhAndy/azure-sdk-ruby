# AzureRest::IpamPoolPrefixAllocation2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pool** | [**IpamPoolPrefixAllocationPool2**](IpamPoolPrefixAllocationPool2.md) |  | [optional] |
| **number_of_ip_addresses** | **String** | Number of IP addresses to allocate. | [optional] |
| **allocated_address_prefixes** | **Array&lt;String&gt;** | List of assigned IP address prefixes in the IpamPool of the associated resource. | [optional][readonly] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::IpamPoolPrefixAllocation2.new(
  pool: null,
  number_of_ip_addresses: null,
  allocated_address_prefixes: null
)
```

