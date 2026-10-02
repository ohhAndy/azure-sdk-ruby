# AzureSDK::PrivateLinkServiceIpConfigurationProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **private_ip_address** | **String** | The private IP address of the IP configuration. | [optional] |
| **private_ip_allocation_method** | [**IPAllocationMethod**](IPAllocationMethod.md) |  | [optional] |
| **subnet** | [**Subnet**](Subnet.md) |  | [optional] |
| **primary** | **Boolean** | Whether the ip configuration is primary or not. | [optional] |
| **provisioning_state** | [**ProvisioningState**](ProvisioningState.md) |  | [optional] |
| **private_ip_address_version** | [**IPVersion**](IPVersion.md) |  | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::PrivateLinkServiceIpConfigurationProperties.new(
  private_ip_address: null,
  private_ip_allocation_method: null,
  subnet: null,
  primary: null,
  provisioning_state: null,
  private_ip_address_version: null
)
```

