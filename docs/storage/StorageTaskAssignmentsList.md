# AzureSDK::StorageTaskAssignmentsList

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | [**Array&lt;StorageTaskAssignment&gt;**](StorageTaskAssignment.md) | The StorageTaskAssignment items on this page | [readonly] |
| **next_link** | **String** | The link to the next page of items | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::StorageTaskAssignmentsList.new(
  value: null,
  next_link: null
)
```

