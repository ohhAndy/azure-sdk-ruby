# AzureSDK::UserAssignedIdentity

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **principal_id** | **String** | Principal Id of user assigned identity | [optional][readonly] |
| **client_id** | **String** | Client Id of user assigned identity | [optional][readonly] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::UserAssignedIdentity.new(
  principal_id: null,
  client_id: null
)
```

