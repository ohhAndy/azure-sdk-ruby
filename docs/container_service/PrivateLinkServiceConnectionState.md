# AzureRest::PrivateLinkServiceConnectionState

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | [**ConnectionStatus**](ConnectionStatus.md) |  | [optional] |
| **description** | **String** | The private link service connection description. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::PrivateLinkServiceConnectionState.new(
  status: null,
  description: null
)
```

