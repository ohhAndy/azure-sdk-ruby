# AzureSDK::MHSMPrivateEndpointConnectionProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **private_endpoint** | [**MHSMPrivateEndpoint**](MHSMPrivateEndpoint.md) |  | [optional] |
| **private_link_service_connection_state** | [**MHSMPrivateLinkServiceConnectionState**](MHSMPrivateLinkServiceConnectionState.md) |  | [optional] |
| **provisioning_state** | [**PrivateEndpointConnectionProvisioningState**](PrivateEndpointConnectionProvisioningState.md) |  | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::MHSMPrivateEndpointConnectionProperties.new(
  private_endpoint: null,
  private_link_service_connection_state: null,
  provisioning_state: null
)
```

