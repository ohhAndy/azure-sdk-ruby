# AzureSDK::CredentialResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name of the credential. | [optional][readonly] |
| **value** | **String** | Base64-encoded Kubernetes configuration file. | [optional][readonly] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::CredentialResult.new(
  name: null,
  value: null
)
```

