# AzureSDK::ProviderPermission

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **application_id** | **String** | The application id. | [optional] |
| **role_definition** | [**RoleDefinition**](RoleDefinition.md) |  | [optional] |
| **managed_by_role_definition** | [**RoleDefinition**](RoleDefinition.md) |  | [optional] |
| **provider_authorization_consent_state** | [**ProviderAuthorizationConsentState**](ProviderAuthorizationConsentState.md) |  | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::ProviderPermission.new(
  application_id: null,
  role_definition: null,
  managed_by_role_definition: null,
  provider_authorization_consent_state: null
)
```

