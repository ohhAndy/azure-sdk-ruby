# AzureSDK::AdministratorMicrosoftEntraProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **principal_type** | [**PrincipalType**](PrincipalType.md) |  | [optional] |
| **principal_name** | **String** | Name of the Microsoft Entra principal. | [optional] |
| **object_id** | **String** | Object identifier of the Microsoft Entra principal. | [optional] |
| **tenant_id** | **String** | Identifier of the tenant in which the Microsoft Entra principal exists. | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::AdministratorMicrosoftEntraProperties.new(
  principal_type: null,
  principal_name: null,
  object_id: null,
  tenant_id: null
)
```

