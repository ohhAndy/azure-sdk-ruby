# AzureSDK::AuthConfig

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **active_directory_auth** | [**MicrosoftEntraAuth**](MicrosoftEntraAuth.md) |  | [optional] |
| **password_auth** | **String** | Indicates if the server supports password based authentication. | [optional][default to &#39;Enabled&#39;] |
| **tenant_id** | **String** | Identifier of the tenant of the delegated resource. | [optional][default to &#39;&#39;] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::AuthConfig.new(
  active_directory_auth: null,
  password_auth: null,
  tenant_id: null
)
```

