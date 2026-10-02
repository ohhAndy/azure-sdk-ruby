# AzureSDK::ImageListResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | [**Array&lt;Image&gt;**](Image.md) | The list of Images |  |
| **next_link** | **String** | The uri to fetch the next page of Images. Call ListNext() with this to fetch the next page of Images. | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::ImageListResult.new(
  value: null,
  next_link: null
)
```

