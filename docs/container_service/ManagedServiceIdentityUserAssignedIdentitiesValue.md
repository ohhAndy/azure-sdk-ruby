# AzureRest::ManagedServiceIdentityUserAssignedIdentitiesValue

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **principal_id** | **String** | The principal id of user assigned identity. | [optional][readonly] |
| **client_id** | **String** | The client id of user assigned identity. | [optional][readonly] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::ManagedServiceIdentityUserAssignedIdentitiesValue.new(
  principal_id: null,
  client_id: null
)
```

