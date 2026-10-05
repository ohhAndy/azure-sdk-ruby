# AzureRest::FrontendIPConfigurationPropertiesFormat

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **inbound_nat_rules** | [**Array&lt;SubResource&gt;**](SubResource.md) | An array of references to inbound rules that use this frontend IP. | [optional][readonly] |
| **inbound_nat_pools** | [**Array&lt;SubResource&gt;**](SubResource.md) | An array of references to inbound pools that use this frontend IP. | [optional][readonly] |
| **outbound_rules** | [**Array&lt;SubResource&gt;**](SubResource.md) | An array of references to outbound rules that use this frontend IP. | [optional][readonly] |
| **load_balancing_rules** | [**Array&lt;SubResource&gt;**](SubResource.md) | An array of references to load balancing rules that use this frontend IP. | [optional][readonly] |
| **private_ip_address** | **String** | The private IP address of the IP configuration. | [optional] |
| **private_ip_allocation_method** | [**IPAllocationMethod**](IPAllocationMethod.md) |  | [optional] |
| **private_ip_address_version** | [**IPVersion**](IPVersion.md) |  | [optional] |
| **subnet** | [**Subnet2**](Subnet2.md) |  | [optional] |
| **public_ip_address** | [**PublicIPAddress2**](PublicIPAddress2.md) |  | [optional] |
| **public_ip_prefix** | [**SubResource**](SubResource.md) |  | [optional] |
| **gateway_load_balancer** | [**SubResource**](SubResource.md) |  | [optional] |
| **provisioning_state** | [**ProvisioningState**](ProvisioningState.md) |  | [optional] |
| **ddos_settings** | [**DdosFrontendIpConfigurationSettings**](DdosFrontendIpConfigurationSettings.md) |  | [optional] |
| **enable_connection_tracking** | **Boolean** | Enables UDP flow tracking for traffic associated with the frontend IP configuration. When enabled, packets belonging to the same UDP flow are consistently directed to the same backend instance. This setting applies to all associated load balancing rules and takes precedence over rule-level enableConnectionTracking settings. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::FrontendIPConfigurationPropertiesFormat.new(
  inbound_nat_rules: null,
  inbound_nat_pools: null,
  outbound_rules: null,
  load_balancing_rules: null,
  private_ip_address: null,
  private_ip_allocation_method: null,
  private_ip_address_version: null,
  subnet: null,
  public_ip_address: null,
  public_ip_prefix: null,
  gateway_load_balancer: null,
  provisioning_state: null,
  ddos_settings: null,
  enable_connection_tracking: null
)
```

