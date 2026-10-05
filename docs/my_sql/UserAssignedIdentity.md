# AzureRest::UserAssignedIdentity

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **principal_id** | **String** | Principal Id of user assigned identity | [optional][readonly] |
| **client_id** | **String** | Client Id of user assigned identity | [optional][readonly] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::UserAssignedIdentity.new(
  principal_id: null,
  client_id: null
)
```

