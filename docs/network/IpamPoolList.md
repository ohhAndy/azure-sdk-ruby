# AzureSDK::IpamPoolList

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | [**Array&lt;IpamPool&gt;**](IpamPool.md) | The IpamPool items on this page |  |
| **next_link** | **String** | The link to the next page of items | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::IpamPoolList.new(
  value: null,
  next_link: null
)
```

