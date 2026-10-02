# AzureSDK::ResourceGroupListResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | [**Array&lt;ResourceGroup&gt;**](ResourceGroup.md) | The ResourceGroup items on this page |  |
| **next_link** | **String** | The link to the next page of items | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::ResourceGroupListResult.new(
  value: null,
  next_link: null
)
```

