# AzureSDK::DatabaseList

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | [**Array&lt;Database&gt;**](Database.md) | The Database items on this page |  |
| **next_link** | **String** | The link to the next page of items | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::DatabaseList.new(
  value: null,
  next_link: null
)
```

