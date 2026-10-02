# AzureSDK::ListTableResource

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | [**Array&lt;Table&gt;**](Table.md) | The Table items on this page | [readonly] |
| **next_link** | **String** | The link to the next page of items | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::ListTableResource.new(
  value: null,
  next_link: null
)
```

