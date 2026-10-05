# AzureRest::AccountUsage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **live_shares** | [**AccountUsageElements**](AccountUsageElements.md) |  | [optional] |
| **soft_deleted_shares** | [**AccountUsageElements**](AccountUsageElements.md) |  | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::AccountUsage.new(
  live_shares: null,
  soft_deleted_shares: null
)
```

