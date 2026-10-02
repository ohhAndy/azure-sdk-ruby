# AzureSDK::UserAssignedIdentity

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **principal_id** | **String** | The principal ID of the assigned identity. | [optional][readonly] |
| **client_id** | **String** | The client ID of the assigned identity. | [optional][readonly] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::UserAssignedIdentity.new(
  principal_id: null,
  client_id: null
)
```

