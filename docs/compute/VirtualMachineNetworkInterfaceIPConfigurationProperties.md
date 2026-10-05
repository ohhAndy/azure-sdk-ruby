# AzureRest::VirtualMachineNetworkInterfaceIPConfigurationProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subnet** | [**SubResource**](SubResource.md) |  | [optional] |
| **primary** | **Boolean** | Specifies the primary network interface in case the virtual machine has more than 1 network interface. | [optional] |
| **public_ip_address_configuration** | [**VirtualMachinePublicIPAddressConfiguration**](VirtualMachinePublicIPAddressConfiguration.md) |  | [optional] |
| **private_ip_address_version** | [**IPVersions**](IPVersions.md) |  | [optional] |
| **application_security_groups** | [**Array&lt;SubResource&gt;**](SubResource.md) | Specifies an array of references to application security group. | [optional] |
| **application_gateway_backend_address_pools** | [**Array&lt;SubResource&gt;**](SubResource.md) | Specifies an array of references to backend address pools of application gateways. A virtual machine can reference backend address pools of multiple application gateways. Multiple virtual machines cannot use the same application gateway. | [optional] |
| **load_balancer_backend_address_pools** | [**Array&lt;SubResource&gt;**](SubResource.md) | Specifies an array of references to backend address pools of load balancers. A virtual machine can reference backend address pools of one public and one internal load balancer. [Multiple virtual machines cannot use the same basic sku load balancer]. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::VirtualMachineNetworkInterfaceIPConfigurationProperties.new(
  subnet: null,
  primary: null,
  public_ip_address_configuration: null,
  private_ip_address_version: null,
  application_security_groups: null,
  application_gateway_backend_address_pools: null,
  load_balancer_backend_address_pools: null
)
```

