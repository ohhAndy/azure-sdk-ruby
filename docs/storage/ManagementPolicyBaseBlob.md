# AzureRest::ManagementPolicyBaseBlob

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tier_to_cool** | [**DateAfterModification**](DateAfterModification.md) |  | [optional] |
| **tier_to_archive** | [**DateAfterModification**](DateAfterModification.md) |  | [optional] |
| **tier_to_cold** | [**DateAfterModification**](DateAfterModification.md) |  | [optional] |
| **tier_to_hot** | [**DateAfterModification**](DateAfterModification.md) |  | [optional] |
| **delete** | [**DateAfterModification**](DateAfterModification.md) |  | [optional] |
| **enable_auto_tier_to_hot_from_cool** | **Boolean** | This property enables auto tiering of a blob from cool to hot on a blob access. This property requires tierToCool.daysAfterLastAccessTimeGreaterThan. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::ManagementPolicyBaseBlob.new(
  tier_to_cool: null,
  tier_to_archive: null,
  tier_to_cold: null,
  tier_to_hot: null,
  delete: null,
  enable_auto_tier_to_hot_from_cool: null
)
```

