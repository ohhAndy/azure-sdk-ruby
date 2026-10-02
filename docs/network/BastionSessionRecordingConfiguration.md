# AzureSDK::BastionSessionRecordingConfiguration

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **identity** | [**SessionRecordingIdentity**](SessionRecordingIdentity.md) |  |  |
| **blob_container_uri** | **String** | The blob container to store the recordings. Ex: https://contosostorage.blob.core.windows.net/contosorecordings. |  |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::BastionSessionRecordingConfiguration.new(
  identity: null,
  blob_container_uri: null
)
```

