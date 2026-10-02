# AzureSDK::BackendAddressPoolPropertiesFormat

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **location** | **String** | The location of the backend address pool. | [optional] |
| **tunnel_interfaces** | [**Array&lt;GatewayLoadBalancerTunnelInterface&gt;**](GatewayLoadBalancerTunnelInterface.md) | An array of gateway load balancer tunnel interfaces. | [optional] |
| **load_balancer_backend_addresses** | [**Array&lt;LoadBalancerBackendAddress&gt;**](LoadBalancerBackendAddress.md) | An array of backend addresses. | [optional] |
| **backend_ip_configurations** | [**Array&lt;NetworkInterfaceIPConfiguration2&gt;**](NetworkInterfaceIPConfiguration2.md) | An array of references to IP addresses defined in network interfaces. | [optional][readonly] |
| **load_balancing_rules** | [**Array&lt;SubResource&gt;**](SubResource.md) | An array of references to load balancing rules that use this backend address pool. | [optional][readonly] |
| **outbound_rule** | [**SubResource**](SubResource.md) |  | [optional] |
| **outbound_rules** | [**Array&lt;SubResource&gt;**](SubResource.md) | An array of references to outbound rules that use this backend address pool. | [optional][readonly] |
| **inbound_nat_rules** | [**Array&lt;SubResource&gt;**](SubResource.md) | An array of references to inbound NAT rules that use this backend address pool. | [optional][readonly] |
| **provisioning_state** | [**ProvisioningState**](ProvisioningState.md) |  | [optional] |
| **drain_period_in_seconds** | **Integer** | Amount of seconds Load Balancer waits for before sending RESET to client and backend address. | [optional] |
| **virtual_network** | [**SubResource**](SubResource.md) |  | [optional] |
| **sync_mode** | [**SyncMode**](SyncMode.md) |  | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::BackendAddressPoolPropertiesFormat.new(
  location: null,
  tunnel_interfaces: null,
  load_balancer_backend_addresses: null,
  backend_ip_configurations: null,
  load_balancing_rules: null,
  outbound_rule: null,
  outbound_rules: null,
  inbound_nat_rules: null,
  provisioning_state: null,
  drain_period_in_seconds: null,
  virtual_network: null,
  sync_mode: null
)
```

