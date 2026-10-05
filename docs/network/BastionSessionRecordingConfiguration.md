# AzureRest::BastionSessionRecordingConfiguration

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **identity** | [**SessionRecordingIdentity**](SessionRecordingIdentity.md) |  |  |
| **blob_container_uri** | **String** | The blob container to store the recordings. Ex: https://contosostorage.blob.core.windows.net/contosorecordings. |  |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::BastionSessionRecordingConfiguration.new(
  identity: null,
  blob_container_uri: null
)
```

