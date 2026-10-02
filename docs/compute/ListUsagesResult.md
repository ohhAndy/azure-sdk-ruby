# AzureSDK::ListUsagesResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | [**Array&lt;Usage&gt;**](Usage.md) | The list of compute resource usages. |  |
| **next_link** | **String** | The URI to fetch the next page of compute resource usage information. Call ListNext() with this to fetch the next page of compute resource usage information. | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::ListUsagesResult.new(
  value: null,
  next_link: null
)
```

