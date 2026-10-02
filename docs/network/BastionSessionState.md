# AzureSDK::BastionSessionState

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **session_id** | **String** | A unique id for the session. | [optional][readonly] |
| **message** | **String** | Used for extra information. | [optional][readonly] |
| **state** | **String** | The state of the session. Disconnected/Failed/NotFound. | [optional][readonly] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::BastionSessionState.new(
  session_id: null,
  message: null,
  state: null
)
```

