# AzureRest::BackupAutomaticAndOnDemandList

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | [**Array&lt;BackupAutomaticAndOnDemand&gt;**](BackupAutomaticAndOnDemand.md) | The BackupAutomaticAndOnDemand items on this page |  |
| **next_link** | **String** | The link to the next page of items | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::BackupAutomaticAndOnDemandList.new(
  value: null,
  next_link: null
)
```

