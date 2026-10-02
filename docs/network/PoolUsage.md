# AzureSDK::PoolUsage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address_prefixes** | **Array&lt;String&gt;** | List of IP address prefixes of the resource. | [optional][readonly] |
| **child_pools** | [**Array&lt;ResourceBasics&gt;**](ResourceBasics.md) | List of IpamPool that are children of this IpamPool. | [optional][readonly] |
| **allocated_address_prefixes** | **Array&lt;String&gt;** | List of assigned IP address prefixes. | [optional][readonly] |
| **reserved_address_prefixes** | **Array&lt;String&gt;** | List of reserved IP address prefixes. These IP addresses could be reclaimed if not assigned in the given time. | [optional][readonly] |
| **available_address_prefixes** | **Array&lt;String&gt;** | List of available IP address prefixes. | [optional][readonly] |
| **total_number_of_ip_addresses** | **String** | Total number of IP addresses managed in the IpamPool. | [optional][readonly] |
| **number_of_allocated_ip_addresses** | **String** | Total number of assigned IP addresses in the IpamPool. | [optional][readonly] |
| **number_of_reserved_ip_addresses** | **String** | Total number of reserved IP addresses in the IpamPool. | [optional][readonly] |
| **number_of_available_ip_addresses** | **String** | Total number of available IP addresses in the IpamPool. | [optional][readonly] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::PoolUsage.new(
  address_prefixes: null,
  child_pools: null,
  allocated_address_prefixes: null,
  reserved_address_prefixes: null,
  available_address_prefixes: null,
  total_number_of_ip_addresses: null,
  number_of_allocated_ip_addresses: null,
  number_of_reserved_ip_addresses: null,
  number_of_available_ip_addresses: null
)
```

