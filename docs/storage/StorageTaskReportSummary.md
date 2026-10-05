# AzureRest::StorageTaskReportSummary

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | [**Array&lt;StorageTaskReportInstance&gt;**](StorageTaskReportInstance.md) | The StorageTaskReportInstance items on this page | [readonly] |
| **next_link** | **String** | The link to the next page of items | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::StorageTaskReportSummary.new(
  value: null,
  next_link: null
)
```

