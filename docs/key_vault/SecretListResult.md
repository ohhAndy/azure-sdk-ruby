# AzureSDK::SecretListResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | [**Array&lt;Secret&gt;**](Secret.md) | The Secret items on this page |  |
| **next_link** | **String** | The link to the next page of items | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::SecretListResult.new(
  value: null,
  next_link: null
)
```

