# AzureSDK::BastionActiveSessionListResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | [**Array&lt;BastionActiveSession&gt;**](BastionActiveSession.md) | The BastionActiveSession items on this page |  |
| **next_link** | **String** | The link to the next page of items | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::BastionActiveSessionListResult.new(
  value: null,
  next_link: null
)
```

