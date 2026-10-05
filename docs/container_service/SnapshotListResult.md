# AzureRest::SnapshotListResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | [**Array&lt;Snapshot&gt;**](Snapshot.md) | The Snapshot items on this page |  |
| **next_link** | **String** | The link to the next page of items | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::SnapshotListResult.new(
  value: null,
  next_link: null
)
```

