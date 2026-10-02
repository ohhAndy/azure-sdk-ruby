# AzureSDK::PrivateLinkServiceConnectionState

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | [**PrivateEndpointServiceConnectionStatus**](PrivateEndpointServiceConnectionStatus.md) |  | [optional] |
| **description** | **String** | The reason for approval/rejection of the connection. | [optional] |
| **action_required** | **String** | A message indicating if changes on the service provider require any updates on the consumer. | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::PrivateLinkServiceConnectionState.new(
  status: null,
  description: null,
  action_required: null
)
```

