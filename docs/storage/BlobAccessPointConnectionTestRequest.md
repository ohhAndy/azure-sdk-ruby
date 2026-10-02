# AzureSDK::BlobAccessPointConnectionTestRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **unique_id** | **String** | The system-generated unique identifier of the Blob Access Point configuration, as returned by a read operation. This value must match the configuration named in the request path, and is required so that a configuration which was deleted and recreated under the same name is not tested by mistake. |  |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::BlobAccessPointConnectionTestRequest.new(
  unique_id: null
)
```

