# AzureSDK::BlobAccessPointConfigurationUpdate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tags** | **Hash&lt;String, String&gt;** | Resource tags. | [optional] |
| **properties** | [**BlobAccessPointConfigurationPropertiesUpdate**](BlobAccessPointConfigurationPropertiesUpdate.md) |  | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::BlobAccessPointConfigurationUpdate.new(
  tags: null,
  properties: null
)
```

