# AzureSDK::VirtualRouterPropertiesFormat

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **virtual_router_asn** | **Integer** | VirtualRouter ASN. | [optional] |
| **virtual_router_ips** | **Array&lt;String&gt;** | VirtualRouter IPs. | [optional] |
| **hosted_subnet** | [**SubResource**](SubResource.md) |  | [optional] |
| **hosted_gateway** | [**SubResource**](SubResource.md) |  | [optional] |
| **peerings** | [**Array&lt;SubResource&gt;**](SubResource.md) | List of references to VirtualRouterPeerings. | [optional][readonly] |
| **provisioning_state** | [**ProvisioningState**](ProvisioningState.md) |  | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::VirtualRouterPropertiesFormat.new(
  virtual_router_asn: null,
  virtual_router_ips: null,
  hosted_subnet: null,
  hosted_gateway: null,
  peerings: null,
  provisioning_state: null
)
```

