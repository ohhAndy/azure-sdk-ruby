# AzureRest::VirtualMachineScaleSetIPConfigurationProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subnet** | [**ApiEntityReference**](ApiEntityReference.md) |  | [optional] |
| **primary** | **Boolean** | Specifies the primary network interface in case the virtual machine has more than 1 network interface. | [optional] |
| **public_ip_address_configuration** | [**VirtualMachineScaleSetPublicIPAddressConfiguration**](VirtualMachineScaleSetPublicIPAddressConfiguration.md) |  | [optional] |
| **private_ip_address_version** | [**IPVersion**](IPVersion.md) |  | [optional] |
| **application_gateway_backend_address_pools** | [**Array&lt;SubResource&gt;**](SubResource.md) | Specifies an array of references to backend address pools of application gateways. A scale set can reference backend address pools of multiple application gateways. Multiple scale sets cannot use the same application gateway. | [optional] |
| **application_security_groups** | [**Array&lt;SubResource&gt;**](SubResource.md) | Specifies an array of references to application security group. | [optional] |
| **load_balancer_backend_address_pools** | [**Array&lt;SubResource&gt;**](SubResource.md) | Specifies an array of references to backend address pools of load balancers. A scale set can reference backend address pools of one public and one internal load balancer. Multiple scale sets cannot use the same basic sku load balancer. | [optional] |
| **load_balancer_inbound_nat_pools** | [**Array&lt;SubResource&gt;**](SubResource.md) | Specifies an array of references to inbound Nat pools of the load balancers. A scale set can reference inbound nat pools of one public and one internal load balancer. Multiple scale sets cannot use the same basic sku load balancer. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::VirtualMachineScaleSetIPConfigurationProperties.new(
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

