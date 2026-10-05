# AzureRest::VirtualRouterPeeringProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **peer_asn** | **Integer** | Peer ASN. | [optional] |
| **peer_ip** | **String** | Peer IP. | [optional] |
| **provisioning_state** | [**ProvisioningState**](ProvisioningState.md) |  | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::VirtualRouterPeeringProperties.new(
  peer_asn: null,
  peer_ip: null,
  provisioning_state: null
)
```

