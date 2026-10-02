# AzureSDK::PrivateLinkServiceConnectionState

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | [**PrivateEndpointServiceConnectionStatus**](PrivateEndpointServiceConnectionStatus.md) |  | [optional] |
| **description** | **String** | The reason for approval or rejection. | [optional] |
| **actions_required** | [**ActionsRequired**](ActionsRequired.md) |  | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::PrivateLinkServiceConnectionState.new(
  status: null,
  description: null,
  actions_required: null
)
```

