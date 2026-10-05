# AzureRest::StaticCidrList

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | [**Array&lt;StaticCidr&gt;**](StaticCidr.md) | The StaticCidr items on this page |  |
| **next_link** | **String** | The link to the next page of items | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::StaticCidrList.new(
  value: null,
  next_link: null
)
```

