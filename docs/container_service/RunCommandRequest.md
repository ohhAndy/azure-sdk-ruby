# AzureSDK::RunCommandRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **command** | **String** | The command to run. |  |
| **context** | **String** | A base64 encoded zip file containing the files required by the command. | [optional] |
| **cluster_token** | **String** | AuthToken issued for AKS AAD Server App. | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::RunCommandRequest.new(
  command: null,
  context: null,
  cluster_token: null
)
```

