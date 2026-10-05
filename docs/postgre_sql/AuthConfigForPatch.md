# AzureRest::AuthConfigForPatch

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **active_directory_auth** | [**MicrosoftEntraAuth**](MicrosoftEntraAuth.md) |  | [optional] |
| **password_auth** | [**PasswordBasedAuth**](PasswordBasedAuth.md) |  | [optional] |
| **tenant_id** | **String** | Identifier of the tenant of the delegated resource. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::AuthConfigForPatch.new(
  active_directory_auth: null,
  password_auth: null,
  tenant_id: null
)
```

