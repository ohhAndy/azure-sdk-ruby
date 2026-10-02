# AzureSDK::PrivateEndpointConnectionProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **group_ids** | **Array&lt;String&gt;** | The group ids for the private endpoint resource. | [optional][readonly] |
| **private_endpoint** | [**PrivateEndpoint**](PrivateEndpoint.md) |  | [optional] |
| **private_link_service_connection_state** | [**PrivateLinkServiceConnectionState**](PrivateLinkServiceConnectionState.md) |  |  |
| **provisioning_state** | [**PrivateEndpointConnectionProvisioningState**](PrivateEndpointConnectionProvisioningState.md) |  | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::PrivateEndpointConnectionProperties.new(
  group_ids: null,
  private_endpoint: null,
  private_link_service_connection_state: null,
  provisioning_state: null
)
```

