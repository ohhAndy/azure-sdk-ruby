# AzureRest::PrivateLinkServiceConnectionState

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** | The concrete private link service connection. |  |
| **description** | **String** | The optional description of the status. | [optional] |
| **actions_required** | **String** | Whether there is further actions. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::PrivateLinkServiceConnectionState.new(
  status: null,
  description: null,
  actions_required: null
)
```

