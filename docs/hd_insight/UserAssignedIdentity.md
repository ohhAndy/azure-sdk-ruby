# AzureSDK::UserAssignedIdentity

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **principal_id** | **String** | The principal id of user assigned identity. | [optional][readonly] |
| **client_id** | **String** | The client id of user assigned identity. | [optional][readonly] |
| **tenant_id** | **String** | The tenant id of user assigned identity. | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::UserAssignedIdentity.new(
  principal_id: null,
  client_id: null,
  tenant_id: null
)
```

