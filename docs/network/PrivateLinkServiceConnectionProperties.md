# AzureRest::PrivateLinkServiceConnectionProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **provisioning_state** | [**ProvisioningState**](ProvisioningState.md) |  | [optional] |
| **private_link_service_id** | **String** | The resource id of private link service. | [optional] |
| **group_ids** | **Array&lt;String&gt;** | The ID(s) of the group(s) obtained from the remote resource that this private endpoint should connect to. | [optional] |
| **request_message** | **String** | A message passed to the owner of the remote resource with this connection request. Restricted to 140 chars. | [optional] |
| **private_link_service_connection_state** | [**PrivateLinkServiceConnectionState**](PrivateLinkServiceConnectionState.md) |  | [optional] |
| **approval_reference** | [**ApprovalReference**](ApprovalReference.md) |  | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::PrivateLinkServiceConnectionProperties.new(
  provisioning_state: null,
  private_link_service_id: null,
  group_ids: null,
  request_message: null,
  private_link_service_connection_state: null,
  approval_reference: null
)
```

