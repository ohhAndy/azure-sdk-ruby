# AzureSDK::IdentityBindingListResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | [**Array&lt;IdentityBinding&gt;**](IdentityBinding.md) | The IdentityBinding items on this page |  |
| **next_link** | **String** | The link to the next page of items | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::IdentityBindingListResult.new(
  value: null,
  next_link: null
)
```

