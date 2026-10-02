# AzureSDK::ResourceListResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | [**Array&lt;TrackedResource&gt;**](TrackedResource.md) | The list of vault resources. |  |
| **next_link** | **String** | The URL to get the next set of vault resources. | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::ResourceListResult.new(
  value: null,
  next_link: null
)
```

