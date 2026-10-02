# AzureSDK::CredentialResults

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **kubeconfigs** | [**Array&lt;CredentialResult&gt;**](CredentialResult.md) | Base64-encoded Kubernetes configuration file. | [optional][readonly] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::CredentialResults.new(
  kubeconfigs: null
)
```

