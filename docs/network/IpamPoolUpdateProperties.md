# AzureSDK::IpamPoolUpdateProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **description** | **String** |  | [optional] |
| **display_name** | **String** | String representing a friendly name for the resource. | [optional] |
| **min_allocation_size** | **String** | Minimum number of IP addresses required for allocations from this IpamPool to be compliant. Must be less than or equal to the maximum allocation size. Omit to leave the current value unchanged; set to an empty string to clear it. | [optional] |
| **max_allocation_size** | **String** | Maximum number of IP addresses allowed for allocations from this IpamPool to be compliant. Must be greater than or equal to the minimum allocation size. Omit to leave the current value unchanged; set to an empty string to clear it. | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::IpamPoolUpdateProperties.new(
  description: null,
  display_name: null,
  min_allocation_size: null,
  max_allocation_size: null
)
```

