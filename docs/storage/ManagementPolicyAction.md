# AzureSDK::ManagementPolicyAction

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **base_blob** | [**ManagementPolicyBaseBlob**](ManagementPolicyBaseBlob.md) |  | [optional] |
| **snapshot** | [**ManagementPolicySnapShot**](ManagementPolicySnapShot.md) |  | [optional] |
| **version** | [**ManagementPolicyVersion**](ManagementPolicyVersion.md) |  | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::ManagementPolicyAction.new(
  base_blob: null,
  snapshot: null,
  version: null
)
```

