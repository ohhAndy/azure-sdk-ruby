# AzureRest::CommonUserAssignedIdentitiesValue

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **principal_id** | **String** | The principal id of user assigned identity. | [optional][readonly] |
| **client_id** | **String** | The client id of user assigned identity. | [optional][readonly] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::CommonUserAssignedIdentitiesValue.new(
  principal_id: null,
  client_id: null
)
```

