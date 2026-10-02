# AzureSDK::BastionSessionDeleteResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | [**Array&lt;BastionSessionState&gt;**](BastionSessionState.md) | The BastionSessionState items on this page |  |
| **next_link** | **String** | The link to the next page of items | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::BastionSessionDeleteResult.new(
  value: null,
  next_link: null
)
```

