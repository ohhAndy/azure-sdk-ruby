# AzureRest::IpamPoolProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **description** | **String** |  | [optional] |
| **display_name** | **String** | String representing a friendly name for the resource. | [optional] |
| **ip_address_type** | [**Array&lt;IpType&gt;**](IpType.md) | List of IP address type for the IpamPool. | [optional][readonly] |
| **parent_pool_name** | **String** | String representing parent IpamPool resource name. If empty the IpamPool will be a root pool. | [optional] |
| **address_prefixes** | **Array&lt;String&gt;** | List of IP address prefixes of the resource. |  |
| **provisioning_state** | [**ProvisioningState**](ProvisioningState.md) |  | [optional] |
| **min_allocation_size** | **String** | Minimum number of IP addresses required for allocations from this IpamPool to be compliant. Must be less than or equal to the maximum allocation size. If not specified or empty, no minimum is enforced. | [optional] |
| **max_allocation_size** | **String** | Maximum number of IP addresses allowed for allocations from this IpamPool to be compliant. Must be greater than or equal to the minimum allocation size. If not specified or empty, no maximum is enforced. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::IpamPoolProperties.new(
  description: null,
  display_name: null,
  ip_address_type: null,
  parent_pool_name: null,
  address_prefixes: null,
  provisioning_state: null,
  min_allocation_size: null,
  max_allocation_size: null
)
```

