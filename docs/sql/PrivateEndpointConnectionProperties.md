# AzureRest::PrivateEndpointConnectionProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **private_endpoint** | [**PrivateEndpointProperty**](PrivateEndpointProperty.md) |  | [optional] |
| **group_ids** | **Array&lt;String&gt;** | Group IDs. | [optional][readonly] |
| **private_link_service_connection_state** | [**PrivateLinkServiceConnectionStateProperty**](PrivateLinkServiceConnectionStateProperty.md) |  | [optional] |
| **provisioning_state** | [**PrivateEndpointProvisioningState**](PrivateEndpointProvisioningState.md) |  | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::PrivateEndpointConnectionProperties.new(
  private_endpoint: null,
  group_ids: null,
  private_link_service_connection_state: null,
  provisioning_state: null
)
```

