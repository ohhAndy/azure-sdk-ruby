# AzureSDK::StaticCidrProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **description** | **String** |  | [optional] |
| **number_of_ip_addresses_to_allocate** | **String** | Number of IP addresses to allocate for a static CIDR resource. The IP addresses will be assigned based on IpamPools available space. | [optional] |
| **address_prefixes** | **Array&lt;String&gt;** | List of IP address prefixes of the resource. | [optional] |
| **total_number_of_ip_addresses** | **String** | Total number of IP addresses allocated for the static CIDR resource. | [optional][readonly] |
| **provisioning_state** | [**ProvisioningState**](ProvisioningState.md) |  | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::StaticCidrProperties.new(
  description: null,
  number_of_ip_addresses_to_allocate: null,
  address_prefixes: null,
  total_number_of_ip_addresses: null,
  provisioning_state: null
)
```

