# AzureRest::DateAfterModification

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **days_after_modification_greater_than** | **Float** | Value indicating the age in days after last modification | [optional] |
| **days_after_last_access_time_greater_than** | **Float** | Value indicating the age in days after last blob access. This property can only be used in conjunction with last access time tracking policy | [optional] |
| **days_after_last_tier_change_greater_than** | **Float** | Value indicating the age in days after last blob tier change time. This property is only applicable for tierToArchive actions and requires daysAfterModificationGreaterThan to be set for baseBlobs based actions. The blob will be archived if both the conditions are satisfied. | [optional] |
| **days_after_creation_greater_than** | **Float** | Value indicating the age in days after blob creation. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::DateAfterModification.new(
  days_after_modification_greater_than: null,
  days_after_last_access_time_greater_than: null,
  days_after_last_tier_change_greater_than: null,
  days_after_creation_greater_than: null
)
```

