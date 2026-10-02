# AzureSDK::LoadBalancingRulePropertiesFormat

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **frontend_ip_configuration** | [**SubResource**](SubResource.md) |  | [optional] |
| **backend_address_pool** | [**SubResource**](SubResource.md) |  | [optional] |
| **backend_address_pools** | [**Array&lt;SubResource&gt;**](SubResource.md) | An array of references to pool of DIPs. | [optional] |
| **probe** | [**SubResource**](SubResource.md) |  | [optional] |
| **protocol** | [**TransportProtocol**](TransportProtocol.md) |  |  |
| **load_distribution** | [**LoadDistribution**](LoadDistribution.md) |  | [optional] |
| **frontend_port** | **Integer** | The port for the external endpoint. Port numbers for each rule must be unique within the Load Balancer. Acceptable values are between 0 and 65534. Note that value 0 enables \&quot;Any Port\&quot;. |  |
| **backend_port** | **Integer** | The port used for internal connections on the endpoint. Acceptable values are between 0 and 65535. Note that value 0 enables \&quot;Any Port\&quot;. | [optional] |
| **idle_timeout_in_minutes** | **Integer** | The timeout for the TCP idle connection. The value can be set between 4 and 30 minutes. The default value is 4 minutes. This element is only used when the protocol is set to TCP. | [optional] |
| **enable_floating_ip** | **Boolean** | Configures a virtual machine&#39;s endpoint for the floating IP capability required to configure a SQL AlwaysOn Availability Group. This setting is required when using the SQL AlwaysOn Availability Groups in SQL server. This setting can&#39;t be changed after you create the endpoint. | [optional] |
| **enable_tcp_reset** | **Boolean** | Receive bidirectional TCP Reset on TCP flow idle timeout or unexpected connection termination. This element is only used when the protocol is set to TCP. | [optional] |
| **disable_outbound_snat** | **Boolean** | Configures SNAT for the VMs in the backend pool to use the publicIP address specified in the frontend of the load balancing rule. | [optional] |
| **enable_connection_tracking** | **Boolean** | Enables UDP flow tracking for the load balancing rule. This property is retained for rule-level configuration compatibility. When enableConnectionTracking is specified on the associated frontend IP configuration, the frontend setting takes precedence. | [optional] |
| **provisioning_state** | [**ProvisioningState**](ProvisioningState.md) |  | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::LoadBalancingRulePropertiesFormat.new(
  frontend_ip_configuration: null,
  backend_address_pool: null,
  backend_address_pools: null,
  probe: null,
  protocol: null,
  load_distribution: null,
  frontend_port: null,
  backend_port: null,
  idle_timeout_in_minutes: null,
  enable_floating_ip: null,
  enable_tcp_reset: null,
  disable_outbound_snat: null,
  enable_connection_tracking: null,
  provisioning_state: null
)
```

