# AzureSDK::PrivateLinkServiceProperties2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **load_balancer_frontend_ip_configurations** | [**Array&lt;FrontendIPConfiguration&gt;**](FrontendIPConfiguration.md) | An array of references to the load balancer IP configurations. | [optional] |
| **ip_configurations** | [**Array&lt;PrivateLinkServiceIpConfiguration2&gt;**](PrivateLinkServiceIpConfiguration2.md) | An array of private link service IP configurations. | [optional] |
| **destination_ip_address** | **String** | The destination IP address of the private link service. | [optional] |
| **access_mode** | [**AccessMode**](AccessMode.md) |  | [optional] |
| **network_interfaces** | [**Array&lt;NetworkInterface2&gt;**](NetworkInterface2.md) | An array of references to the network interfaces created for this private link service. | [optional][readonly] |
| **provisioning_state** | [**ProvisioningState**](ProvisioningState.md) |  | [optional] |
| **private_endpoint_connections** | [**Array&lt;PrivateEndpointConnection2&gt;**](PrivateEndpointConnection2.md) | An array of list about connections to the private endpoint. | [optional][readonly] |
| **visibility** | [**PrivateLinkServicePropertiesVisibility2**](PrivateLinkServicePropertiesVisibility2.md) |  | [optional] |
| **auto_approval** | [**PrivateLinkServicePropertiesAutoApproval2**](PrivateLinkServicePropertiesAutoApproval2.md) |  | [optional] |
| **fqdns** | **Array&lt;String&gt;** | The list of Fqdn. | [optional] |
| **_alias** | **String** | The alias of the private link service. | [optional][readonly] |
| **enable_proxy_protocol** | **Boolean** | Whether the private link service is enabled for proxy protocol or not. | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::PrivateLinkServiceProperties2.new(
  load_balancer_frontend_ip_configurations: null,
  ip_configurations: null,
  destination_ip_address: null,
  access_mode: null,
  network_interfaces: null,
  provisioning_state: null,
  private_endpoint_connections: null,
  visibility: null,
  auto_approval: null,
  fqdns: null,
  _alias: null,
  enable_proxy_protocol: null
)
```

