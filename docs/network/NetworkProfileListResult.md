# AzureRest::NetworkProfileListResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | [**Array&lt;NetworkProfile&gt;**](NetworkProfile.md) | The NetworkProfile items on this page |  |
| **next_link** | **String** | The link to the next page of items | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::NetworkProfileListResult.new(
  value: null,
  next_link: null
)
```

