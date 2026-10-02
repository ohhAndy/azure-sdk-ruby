# AzureSDK::RoleDefinition

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The role definition ID. | [optional] |
| **name** | **String** | The role definition name. | [optional] |
| **is_service_role** | **Boolean** | If this is a service role. | [optional] |
| **permissions** | [**Array&lt;Permission&gt;**](Permission.md) | Role definition permissions. | [optional] |
| **scopes** | **Array&lt;String&gt;** | Role definition assignable scopes. | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::RoleDefinition.new(
  id: null,
  name: null,
  is_service_role: null,
  permissions: null,
  scopes: null
)
```

