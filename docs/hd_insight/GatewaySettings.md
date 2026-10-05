# AzureRest::GatewaySettings

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **rest_auth_credential_is_enabled** | **String** | Indicates whether or not the gateway settings based authorization is enabled. | [optional][readonly] |
| **rest_auth_credential_username** | **String** | The gateway settings user name. | [optional][readonly] |
| **rest_auth_credential_password** | **String** | The gateway settings user password. | [optional][readonly] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::GatewaySettings.new(
  rest_auth_credential_is_enabled: null,
  rest_auth_credential_username: null,
  rest_auth_credential_password: null
)
```

