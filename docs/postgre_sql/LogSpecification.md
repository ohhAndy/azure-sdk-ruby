# AzureSDK::LogSpecification

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of the log. | [optional] |
| **display_name** | **String** | Display name of the log. | [optional] |
| **blob_duration** | **String** | Blob duration for the log. | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::LogSpecification.new(
  name: null,
  display_name: null,
  blob_duration: null
)
```

