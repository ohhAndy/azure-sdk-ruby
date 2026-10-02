# AzureSDK::PrivateEndpointConnectionProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **private_endpoint** | [**PrivateEndpoint**](PrivateEndpoint.md) |  | [optional] |
| **private_link_service_connection_state** | [**PrivateLinkServiceConnectionState**](PrivateLinkServiceConnectionState.md) |  |  |
| **provisioning_state** | [**PrivateEndpointConnectionProvisioningState**](PrivateEndpointConnectionProvisioningState.md) |  | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::PrivateEndpointConnectionProperties.new(
  private_endpoint: null,
  private_link_service_connection_state: null,
  provisioning_state: null
)
```

