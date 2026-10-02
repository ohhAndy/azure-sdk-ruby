# AzureSDK::LoadBalancerBackendAddressPropertiesFormat

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **virtual_network** | [**SubResource**](SubResource.md) |  | [optional] |
| **subnet** | [**SubResource**](SubResource.md) |  | [optional] |
| **ip_address** | **String** | IP Address belonging to the referenced virtual network. | [optional] |
| **network_interface_ip_configuration** | [**SubResource**](SubResource.md) |  | [optional] |
| **load_balancer_frontend_ip_configuration** | [**SubResource**](SubResource.md) |  | [optional] |
| **inbound_nat_rules_port_mapping** | [**Array&lt;NatRulePortMapping&gt;**](NatRulePortMapping.md) | Collection of inbound NAT rule port mappings. | [optional][readonly] |
| **admin_state** | [**LoadBalancerBackendAddressAdminState**](LoadBalancerBackendAddressAdminState.md) |  | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::LoadBalancerBackendAddressPropertiesFormat.new(
  virtual_network: null,
  subnet: null,
  ip_address: null,
  network_interface_ip_configuration: null,
  load_balancer_frontend_ip_configuration: null,
  inbound_nat_rules_port_mapping: null,
  admin_state: null
)
```

