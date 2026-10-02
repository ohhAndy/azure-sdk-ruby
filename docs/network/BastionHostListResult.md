# AzureSDK::BastionHostListResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | [**Array&lt;BastionHost&gt;**](BastionHost.md) | The BastionHost items on this page |  |
| **next_link** | **String** | The link to the next page of items | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::BastionHostListResult.new(
  value: null,
  next_link: null
)
```

