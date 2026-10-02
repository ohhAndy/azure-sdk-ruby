# AzureSDK::DdosProtectionPlanListResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | [**Array&lt;DdosProtectionPlan&gt;**](DdosProtectionPlan.md) | The DdosProtectionPlan items on this page |  |
| **next_link** | **String** | The link to the next page of items | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::DdosProtectionPlanListResult.new(
  value: null,
  next_link: null
)
```

