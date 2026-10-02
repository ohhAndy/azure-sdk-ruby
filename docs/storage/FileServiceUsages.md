# AzureSDK::FileServiceUsages

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | [**Array&lt;FileServiceUsage&gt;**](FileServiceUsage.md) | The FileServiceUsage items on this page | [readonly] |
| **next_link** | **String** | The link to the next page of items | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::FileServiceUsages.new(
  value: null,
  next_link: null
)
```

