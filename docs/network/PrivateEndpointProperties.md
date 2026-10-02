# AzureSDK::PrivateEndpointProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subnet** | [**Subnet**](Subnet.md) |  | [optional] |
| **network_interfaces** | [**Array&lt;NetworkInterface&gt;**](NetworkInterface.md) | An array of references to the network interfaces created for this private endpoint. | [optional][readonly] |
| **provisioning_state** | [**ProvisioningState**](ProvisioningState.md) |  | [optional] |
| **ip_version_type** | **String** | Specifies the IP version type for the private IPs of the private endpoint. If not defined, this defaults to IPv4. | [optional][default to &#39;IPv4&#39;] |
| **private_link_service_connections** | [**Array&lt;PrivateLinkServiceConnection&gt;**](PrivateLinkServiceConnection.md) | A grouping of information about the connection to the remote resource. | [optional] |
| **manual_private_link_service_connections** | [**Array&lt;PrivateLinkServiceConnection&gt;**](PrivateLinkServiceConnection.md) | A grouping of information about the connection to the remote resource. Used when the network admin does not have access to approve connections to the remote resource. | [optional] |
| **custom_dns_configs** | [**Array&lt;CustomDnsConfigPropertiesFormat&gt;**](CustomDnsConfigPropertiesFormat.md) | An array of custom dns configurations. | [optional] |
| **application_security_groups** | [**Array&lt;ApplicationSecurityGroup&gt;**](ApplicationSecurityGroup.md) | Application security groups in which the private endpoint IP configuration is included. | [optional] |
| **ip_configurations** | [**Array&lt;PrivateEndpointIPConfiguration&gt;**](PrivateEndpointIPConfiguration.md) | A list of IP configurations of the private endpoint. This will be used to map to the First Party Service&#39;s endpoints. | [optional] |
| **custom_network_interface_name** | **String** | The custom name of the network interface attached to the private endpoint. | [optional] |
| **billing_sku** | [**PrivateEndpointBillingSku**](PrivateEndpointBillingSku.md) |  | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::PrivateEndpointProperties.new(
  subnet: null,
  network_interfaces: null,
  provisioning_state: null,
  ip_version_type: null,
  private_link_service_connections: null,
  manual_private_link_service_connections: null,
  custom_dns_configs: null,
  application_security_groups: null,
  ip_configurations: null,
  custom_network_interface_name: null,
  billing_sku: null
)
```

