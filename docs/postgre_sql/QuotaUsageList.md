# AzureSDK::QuotaUsageList

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | [**Array&lt;QuotaUsage&gt;**](QuotaUsage.md) | The QuotaUsage items on this page | [readonly] |
| **next_link** | **String** | The link to the next page of items | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::QuotaUsageList.new(
  value: null,
  next_link: null
)
```

