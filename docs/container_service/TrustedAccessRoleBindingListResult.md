# AzureRest::TrustedAccessRoleBindingListResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | [**Array&lt;TrustedAccessRoleBinding&gt;**](TrustedAccessRoleBinding.md) | The TrustedAccessRoleBinding items on this page |  |
| **next_link** | **String** | The link to the next page of items | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::TrustedAccessRoleBindingListResult.new(
  value: null,
  next_link: null
)
```

