# AzureRest::DateAfterCreation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **days_after_creation_greater_than** | **Float** | Value indicating the age in days after creation |  |
| **days_after_last_tier_change_greater_than** | **Float** | Value indicating the age in days after last blob tier change time. This property is only applicable for tierToArchive actions and requires daysAfterCreationGreaterThan to be set for snapshots and blob version based actions. The blob will be archived if both the conditions are satisfied. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::DateAfterCreation.new(
  days_after_creation_greater_than: null,
  days_after_last_tier_change_greater_than: null
)
```

