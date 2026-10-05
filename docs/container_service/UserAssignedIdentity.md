# AzureRest::UserAssignedIdentity

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **resource_id** | **String** | The resource ID of the user assigned identity. | [optional] |
| **client_id** | **String** | The client ID of the user assigned identity. | [optional] |
| **object_id** | **String** | The object ID of the user assigned identity. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::UserAssignedIdentity.new(
  resource_id: null,
  client_id: null,
  object_id: null
)
```

