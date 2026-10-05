# AzureRest::PrivateEndpointConnectionProperties2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **private_endpoint** | [**PrivateEndpoint2**](PrivateEndpoint2.md) |  | [optional] |
| **private_link_service_connection_state** | [**PrivateLinkServiceConnectionState2**](PrivateLinkServiceConnectionState2.md) |  | [optional] |
| **provisioning_state** | [**ProvisioningState**](ProvisioningState.md) |  | [optional] |
| **link_identifier** | **String** | The consumer link id. | [optional][readonly] |
| **private_endpoint_location** | **String** | The location of the private endpoint. | [optional][readonly] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::PrivateEndpointConnectionProperties2.new(
  private_endpoint: null,
  private_link_service_connection_state: null,
  provisioning_state: null,
  link_identifier: null,
  private_endpoint_location: null
)
```

