# AzureSDK::PrivateEndpointConnectionProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **private_endpoint** | [**PrivateEndpoint**](PrivateEndpoint.md) |  | [optional] |
| **private_link_service_connection_state** | [**PrivateLinkServiceConnectionState**](PrivateLinkServiceConnectionState.md) |  |  |
| **link_identifier** | **String** | The link identifier. | [optional][readonly] |
| **provisioning_state** | **String** | The provisioning state, which only appears in the response. | [optional][readonly] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::PrivateEndpointConnectionProperties.new(
  private_endpoint: null,
  private_link_service_connection_state: null,
  link_identifier: null,
  provisioning_state: null
)
```

