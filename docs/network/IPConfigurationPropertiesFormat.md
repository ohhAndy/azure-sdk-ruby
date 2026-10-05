# AzureRest::IPConfigurationPropertiesFormat

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **private_ip_address** | **String** | The private IP address of the IP configuration. | [optional] |
| **private_ip_allocation_method** | [**IPAllocationMethod**](IPAllocationMethod.md) |  | [optional] |
| **subnet** | [**Subnet**](Subnet.md) |  | [optional] |
| **public_ip_address** | [**PublicIPAddress**](PublicIPAddress.md) |  | [optional] |
| **provisioning_state** | [**ProvisioningState**](ProvisioningState.md) |  | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::IPConfigurationPropertiesFormat.new(
  private_ip_address: null,
  private_ip_allocation_method: null,
  subnet: null,
  public_ip_address: null,
  provisioning_state: null
)
```

