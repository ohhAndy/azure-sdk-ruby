# AzureSDK::BlobAccessPointConfigurationListResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | [**Array&lt;BlobAccessPointConfiguration&gt;**](BlobAccessPointConfiguration.md) | The BlobAccessPointConfiguration items on this page |  |
| **next_link** | **String** | The link to the next page of items | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::BlobAccessPointConfigurationListResult.new(
  value: null,
  next_link: null
)
```

