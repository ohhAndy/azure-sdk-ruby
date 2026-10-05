# AzureRest::PrivateLinkServiceConnectionState

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | [**PrivateEndpointServiceConnectionStatus**](PrivateEndpointServiceConnectionStatus.md) |  | [optional] |
| **description** | **String** | The reason for approval/rejection of the connection. | [optional] |
| **actions_required** | **String** | A message indicating if changes on the service provider require any updates on the consumer. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::PrivateLinkServiceConnectionState.new(
  status: null,
  description: null,
  actions_required: null
)
```

