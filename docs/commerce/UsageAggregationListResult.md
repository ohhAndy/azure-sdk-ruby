# AzureSDK::UsageAggregationListResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | [**Array&lt;UsageAggregation&gt;**](UsageAggregation.md) | The UsageAggregation items on this page |  |
| **next_link** | **String** | The link to the next page of items | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::UsageAggregationListResult.new(
  value: null,
  next_link: null
)
```

