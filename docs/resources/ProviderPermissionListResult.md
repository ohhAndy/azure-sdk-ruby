# AzureSDK::ProviderPermissionListResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | [**Array&lt;ProviderPermission&gt;**](ProviderPermission.md) | The ProviderPermission items on this page |  |
| **next_link** | **String** | The link to the next page of items | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::ProviderPermissionListResult.new(
  value: null,
  next_link: null
)
```

