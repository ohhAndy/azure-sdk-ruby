# AzureSDK::BlobAccessPointConfigurationPropertiesUpdate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **state** | [**BlobAccessPointConfigurationState**](BlobAccessPointConfigurationState.md) |  | [optional] |
| **description** | **String** | An arbitrary description of the Blob Access Point configuration. | [optional] |
| **source** | [**BlobAccessPointSourcePropertiesUpdate**](BlobAccessPointSourcePropertiesUpdate.md) |  | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::BlobAccessPointConfigurationPropertiesUpdate.new(
  state: null,
  description: null,
  source: null
)
```

