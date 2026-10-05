# AzureRest::MigrationSecretParametersForPatch

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **admin_credentials** | [**AdminCredentialsForPatch**](AdminCredentialsForPatch.md) |  | [optional] |
| **source_server_username** | **String** | Gets or sets the name of the user for the source server. This user doesn&#39;t need to be an administrator. | [optional] |
| **target_server_username** | **String** | Gets or sets the name of the user for the target server. This user doesn&#39;t need to be an administrator. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::MigrationSecretParametersForPatch.new(
  admin_credentials: null,
  source_server_username: null,
  target_server_username: null
)
```

