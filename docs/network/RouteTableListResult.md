# AzureSDK::RouteTableListResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | [**Array&lt;RouteTable&gt;**](RouteTable.md) | The RouteTable items on this page |  |
| **next_link** | **String** | The link to the next page of items | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::RouteTableListResult.new(
  value: null,
  next_link: null
)
```

