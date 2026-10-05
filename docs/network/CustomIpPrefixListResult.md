# AzureRest::CustomIpPrefixListResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | [**Array&lt;CustomIpPrefix&gt;**](CustomIpPrefix.md) | The CustomIpPrefix items on this page |  |
| **next_link** | **String** | The link to the next page of items | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::CustomIpPrefixListResult.new(
  value: null,
  next_link: null
)
```

