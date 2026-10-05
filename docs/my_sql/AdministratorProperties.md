# AzureRest::AdministratorProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **administrator_type** | [**AdministratorType**](AdministratorType.md) |  | [optional] |
| **login** | **String** | Login name of the server administrator. | [optional] |
| **sid** | **String** | SID (object ID) of the server administrator. | [optional] |
| **tenant_id** | **String** | Tenant ID of the administrator. | [optional] |
| **identity_resource_id** | **String** | The resource id of the identity used for AAD Authentication. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::AdministratorProperties.new(
  administrator_type: null,
  login: null,
  sid: null,
  tenant_id: null,
  identity_resource_id: null
)
```

