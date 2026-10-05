# AzureRest::UpdateGatewaySettingsParameters

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **rest_auth_credential_is_enabled** | **Boolean** | Indicates whether or not the gateway settings based authorization is enabled. | [optional][default to true] |
| **rest_auth_credential_username** | **String** | The gateway settings user name. | [optional] |
| **rest_auth_credential_password** | **String** | The gateway settings user password. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::UpdateGatewaySettingsParameters.new(
  rest_auth_credential_is_enabled: null,
  rest_auth_credential_username: null,
  rest_auth_credential_password: null
)
```

