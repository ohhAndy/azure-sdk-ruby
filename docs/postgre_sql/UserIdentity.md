# AzureRest::UserIdentity

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **principal_id** | **String** | Identifier of the object of the service principal associated to the user assigned managed identity. | [optional] |
| **client_id** | **String** | Identifier of the client of the service principal associated to the user assigned managed identity. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::UserIdentity.new(
  principal_id: null,
  client_id: null
)
```

