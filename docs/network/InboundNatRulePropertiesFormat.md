# AzureSDK::InboundNatRulePropertiesFormat

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **frontend_ip_configuration** | [**SubResource**](SubResource.md) |  | [optional] |
| **backend_ip_configuration** | [**NetworkInterfaceIPConfiguration2**](NetworkInterfaceIPConfiguration2.md) |  | [optional] |
| **protocol** | [**TransportProtocol**](TransportProtocol.md) |  | [optional] |
| **frontend_port** | **Integer** | The port for the external endpoint. Port numbers for each rule must be unique within the Load Balancer. Acceptable values range from 1 to 65534. | [optional] |
| **backend_port** | **Integer** | The port used for the internal endpoint. Acceptable values range from 1 to 65535. | [optional] |
| **idle_timeout_in_minutes** | **Integer** | The timeout for the TCP idle connection. The value can be set between 4 and 30 minutes. The default value is 4 minutes. This element is only used when the protocol is set to TCP. | [optional] |
| **enable_floating_ip** | **Boolean** | Configures a virtual machine&#39;s endpoint for the floating IP capability required to configure a SQL AlwaysOn Availability Group. This setting is required when using the SQL AlwaysOn Availability Groups in SQL server. This setting can&#39;t be changed after you create the endpoint. | [optional] |
| **enable_tcp_reset** | **Boolean** | Receive bidirectional TCP Reset on TCP flow idle timeout or unexpected connection termination. This element is only used when the protocol is set to TCP. | [optional] |
| **frontend_port_range_start** | **Integer** | The port range start for the external endpoint. This property is used together with BackendAddressPool and FrontendPortRangeEnd. Individual inbound NAT rule port mappings will be created for each backend address from BackendAddressPool. Acceptable values range from 1 to 65534. | [optional] |
| **frontend_port_range_end** | **Integer** | The port range end for the external endpoint. This property is used together with BackendAddressPool and FrontendPortRangeStart. Individual inbound NAT rule port mappings will be created for each backend address from BackendAddressPool. Acceptable values range from 1 to 65534. | [optional] |
| **backend_address_pool** | [**SubResource**](SubResource.md) |  | [optional] |
| **provisioning_state** | [**ProvisioningState**](ProvisioningState.md) |  | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::InboundNatRulePropertiesFormat.new(
  frontend_ip_configuration: null,
  backend_ip_configuration: null,
  protocol: null,
  frontend_port: null,
  backend_port: null,
  idle_timeout_in_minutes: null,
  enable_floating_ip: null,
  enable_tcp_reset: null,
  frontend_port_range_start: null,
  frontend_port_range_end: null,
  backend_address_pool: null,
  provisioning_state: null
)
```

