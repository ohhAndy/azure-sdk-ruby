# AzureSDK::PrivateLinkServiceConnectionState

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | [**ConnectionStatus**](ConnectionStatus.md) |  | [optional] |
| **description** | **String** | The private link service connection description. | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::PrivateLinkServiceConnectionState.new(
  status: null,
  description: null
)
```

