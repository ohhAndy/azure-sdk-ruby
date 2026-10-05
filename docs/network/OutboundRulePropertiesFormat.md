# AzureRest::OutboundRulePropertiesFormat

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **allocated_outbound_ports** | **Integer** | The number of outbound ports to be used for NAT. | [optional] |
| **frontend_ip_configurations** | [**Array&lt;SubResource&gt;**](SubResource.md) | The Frontend IP addresses of the load balancer. |  |
| **backend_address_pool** | [**SubResource**](SubResource.md) |  |  |
| **provisioning_state** | [**ProvisioningState**](ProvisioningState.md) |  | [optional] |
| **protocol** | [**LoadBalancerOutboundRuleProtocol**](LoadBalancerOutboundRuleProtocol.md) |  |  |
| **enable_tcp_reset** | **Boolean** | Receive bidirectional TCP Reset on TCP flow idle timeout or unexpected connection termination. This element is only used when the protocol is set to TCP. | [optional] |
| **idle_timeout_in_minutes** | **Integer** | The timeout for the TCP idle connection. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::OutboundRulePropertiesFormat.new(
  allocated_outbound_ports: null,
  frontend_ip_configurations: null,
  backend_address_pool: null,
  provisioning_state: null,
  protocol: null,
  enable_tcp_reset: null,
  idle_timeout_in_minutes: null
)
```

