# AzureSDK::RoleAssignmentListResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | [**Array&lt;RoleAssignment&gt;**](RoleAssignment.md) | The RoleAssignment items on this page |  |
| **next_link** | **String** | The link to the next page of items | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::RoleAssignmentListResult.new(
  value: null,
  next_link: null
)
```

