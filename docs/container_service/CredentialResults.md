# AzureRest::CredentialResults

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **kubeconfigs** | [**Array&lt;CredentialResult&gt;**](CredentialResult.md) | Base64-encoded Kubernetes configuration file. | [optional][readonly] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::CredentialResults.new(
  kubeconfigs: null
)
```

