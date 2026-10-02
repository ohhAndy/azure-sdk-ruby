# AzureSDK::PublicIPPrefixListResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | [**Array&lt;PublicIPPrefix&gt;**](PublicIPPrefix.md) | The PublicIPPrefix items on this page |  |
| **next_link** | **String** | The link to the next page of items | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::PublicIPPrefixListResult.new(
  value: null,
  next_link: null
)
```

