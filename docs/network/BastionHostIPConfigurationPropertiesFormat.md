# AzureRest::BastionHostIPConfigurationPropertiesFormat

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subnet** | [**SubResource**](SubResource.md) |  |  |
| **public_ip_address** | [**SubResource**](SubResource.md) |  | [optional] |
| **provisioning_state** | [**ProvisioningState**](ProvisioningState.md) |  | [optional] |
| **private_ip_allocation_method** | [**IPAllocationMethod**](IPAllocationMethod.md) |  | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::BastionHostIPConfigurationPropertiesFormat.new(
  subnet: null,
  public_ip_address: null,
  provisioning_state: null,
  private_ip_allocation_method: null
)
```

