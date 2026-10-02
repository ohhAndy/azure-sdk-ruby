# AzureSDK::VirtualRouterListResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | [**Array&lt;VirtualRouter&gt;**](VirtualRouter.md) | The VirtualRouter items on this page |  |
| **next_link** | **String** | The link to the next page of items | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::VirtualRouterListResult.new(
  value: null,
  next_link: null
)
```

