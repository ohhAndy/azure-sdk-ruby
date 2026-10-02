# AzureSDK::TrustedAccessRoleListResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | [**Array&lt;TrustedAccessRole&gt;**](TrustedAccessRole.md) | The TrustedAccessRole items on this page |  |
| **next_link** | **String** | The link to the next page of items | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::TrustedAccessRoleListResult.new(
  value: null,
  next_link: null
)
```

