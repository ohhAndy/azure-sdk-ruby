# AzureRest::ApplicationGatewayBackendAddressPoolPropertiesFormat

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **backend_ip_configurations** | [**Array&lt;NetworkInterfaceIPConfiguration2&gt;**](NetworkInterfaceIPConfiguration2.md) | Collection of references to IPs defined in network interfaces. | [optional][readonly] |
| **backend_addresses** | [**Array&lt;ApplicationGatewayBackendAddress&gt;**](ApplicationGatewayBackendAddress.md) | Backend addresses. | [optional] |
| **provisioning_state** | [**ProvisioningState**](ProvisioningState.md) |  | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::ApplicationGatewayBackendAddressPoolPropertiesFormat.new(
  backend_ip_configurations: null,
  backend_addresses: null,
  provisioning_state: null
)
```

