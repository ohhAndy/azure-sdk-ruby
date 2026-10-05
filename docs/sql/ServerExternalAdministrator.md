# AzureRest::ServerExternalAdministrator

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **administrator_type** | [**AdministratorType**](AdministratorType.md) |  | [optional] |
| **principal_type** | [**PrincipalType**](PrincipalType.md) |  | [optional] |
| **login** | **String** | Login name of the server administrator. | [optional] |
| **sid** | **String** | Universally Unique Identifier | [optional] |
| **tenant_id** | **String** | Universally Unique Identifier | [optional] |
| **azure_ad_only_authentication** | **Boolean** | Azure Active Directory only Authentication enabled. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::ServerExternalAdministrator.new(
  administrator_type: null,
  principal_type: null,
  login: null,
  sid: null,
  tenant_id: null,
  azure_ad_only_authentication: null
)
```

