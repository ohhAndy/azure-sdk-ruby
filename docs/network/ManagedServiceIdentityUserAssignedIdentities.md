# AzureSDK::ManagedServiceIdentityUserAssignedIdentities

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **principal_id** | **String** | The principal id of user assigned identity. | [optional][readonly] |
| **client_id** | **String** | The client id of user assigned identity. | [optional][readonly] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::ManagedServiceIdentityUserAssignedIdentities.new(
  principal_id: null,
  client_id: null
)
```

