# AzureRest::VirtualMachineScaleSetUpdateIPConfigurationProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subnet** | [**ApiEntityReference**](ApiEntityReference.md) |  | [optional] |
| **primary** | **Boolean** | Specifies the primary IP Configuration in case the network interface has more than one IP Configuration. | [optional] |
| **public_ip_address_configuration** | [**VirtualMachineScaleSetUpdatePublicIPAddressConfiguration**](VirtualMachineScaleSetUpdatePublicIPAddressConfiguration.md) |  | [optional] |
| **private_ip_address_version** | [**IPVersion**](IPVersion.md) |  | [optional] |
| **application_gateway_backend_address_pools** | [**Array&lt;SubResource&gt;**](SubResource.md) | The application gateway backend address pools. | [optional] |
| **application_security_groups** | [**Array&lt;SubResource&gt;**](SubResource.md) | Specifies an array of references to application security group. | [optional] |
| **load_balancer_backend_address_pools** | [**Array&lt;SubResource&gt;**](SubResource.md) | The load balancer backend address pools. | [optional] |
| **load_balancer_inbound_nat_pools** | [**Array&lt;SubResource&gt;**](SubResource.md) | The load balancer inbound nat pools. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::VirtualMachineScaleSetUpdateIPConfigurationProperties.new(
  subnet: null,
  primary: null,
  public_ip_address_configuration: null,
  private_ip_address_version: null,
  application_gateway_backend_address_pools: null,
  application_security_groups: null,
  load_balancer_backend_address_pools: null,
  load_balancer_inbound_nat_pools: null
)
```

