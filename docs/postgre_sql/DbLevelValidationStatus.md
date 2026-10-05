# AzureRest::DbLevelValidationStatus

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **database_name** | **String** | Name of database. | [optional] |
| **started_on** | **Time** | Start time of a database level validation. | [optional] |
| **ended_on** | **Time** | End time of a database level validation. | [optional] |
| **summary** | [**Array&lt;ValidationSummaryItem&gt;**](ValidationSummaryItem.md) | Summary of database level validations. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::DbLevelValidationStatus.new(
  database_name: null,
  started_on: null,
  ended_on: null,
  summary: null
)
```

