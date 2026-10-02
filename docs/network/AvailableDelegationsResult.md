# AzureSDK::AvailableDelegationsResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | [**Array&lt;AvailableDelegation&gt;**](AvailableDelegation.md) | The AvailableDelegation items on this page |  |
| **next_link** | **String** | The link to the next page of items | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::AvailableDelegationsResult.new(
  value: null,
  next_link: null
)
```

