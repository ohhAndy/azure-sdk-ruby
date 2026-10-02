# AzureSDK::AccessProfile

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **kube_config** | **String** | Base64-encoded Kubernetes configuration file. | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::AccessProfile.new(
  kube_config: null
)
```

