# AzureSDK::AddressPrefixSetListResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | [**Array&lt;AddressPrefixSet&gt;**](AddressPrefixSet.md) | The AddressPrefixSet items on this page |  |
| **next_link** | **String** | The link to the next page of items | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::AddressPrefixSetListResult.new(
  value: null,
  next_link: null
)
```

