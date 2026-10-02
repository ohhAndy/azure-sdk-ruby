# AzureSDK::PrivateEndpointConnectionProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **provisioning_state** | [**PrivateEndpointConnectionProvisioningState**](PrivateEndpointConnectionProvisioningState.md) |  | [optional] |
| **private_endpoint** | [**PrivateEndpoint**](PrivateEndpoint.md) |  | [optional] |
| **private_link_service_connection_state** | [**PrivateLinkServiceConnectionState**](PrivateLinkServiceConnectionState.md) |  |  |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::PrivateEndpointConnectionProperties.new(
  provisioning_state: null,
  private_endpoint: null,
  private_link_service_connection_state: null
)
```

