# AzureSDK::RouteListResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | [**Array&lt;Route&gt;**](Route.md) | The Route items on this page |  |
| **next_link** | **String** | The link to the next page of items | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::RouteListResult.new(
  value: null,
  next_link: null
)
```

