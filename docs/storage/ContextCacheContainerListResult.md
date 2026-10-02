# AzureSDK::ContextCacheContainerListResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | [**Array&lt;ContextCacheContainer&gt;**](ContextCacheContainer.md) | The ContextCacheContainer items on this page |  |
| **next_link** | **String** | The link to the next page of items | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::ContextCacheContainerListResult.new(
  value: null,
  next_link: null
)
```

