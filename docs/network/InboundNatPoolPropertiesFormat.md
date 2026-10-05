# AzureRest::InboundNatPoolPropertiesFormat

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **frontend_ip_configuration** | [**SubResource**](SubResource.md) |  | [optional] |
| **protocol** | [**TransportProtocol**](TransportProtocol.md) |  |  |
| **frontend_port_range_start** | **Integer** | The first port number in the range of external ports that will be used to provide Inbound Nat to NICs associated with a load balancer. Acceptable values range between 1 and 65534. |  |
| **frontend_port_range_end** | **Integer** | The last port number in the range of external ports that will be used to provide Inbound Nat to NICs associated with a load balancer. Acceptable values range between 1 and 65535. |  |
| **backend_port** | **Integer** | The port used for internal connections on the endpoint. Acceptable values are between 1 and 65535. |  |
| **idle_timeout_in_minutes** | **Integer** | The timeout for the TCP idle connection. The value can be set between 4 and 30 minutes. The default value is 4 minutes. This element is only used when the protocol is set to TCP. | [optional] |
| **enable_floating_ip** | **Boolean** | Configures a virtual machine&#39;s endpoint for the floating IP capability required to configure a SQL AlwaysOn Availability Group. This setting is required when using the SQL AlwaysOn Availability Groups in SQL server. This setting can&#39;t be changed after you create the endpoint. | [optional] |
| **enable_tcp_reset** | **Boolean** | Receive bidirectional TCP Reset on TCP flow idle timeout or unexpected connection termination. This element is only used when the protocol is set to TCP. | [optional] |
| **provisioning_state** | [**ProvisioningState**](ProvisioningState.md) |  | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::InboundNatPoolPropertiesFormat.new(
  frontend_ip_configuration: null,
  protocol: null,
  frontend_port_range_start: null,
  frontend_port_range_end: null,
  backend_port: null,
  idle_timeout_in_minutes: null,
  enable_floating_ip: null,
  enable_tcp_reset: null,
  provisioning_state: null
)
```

