# AzureRest::RollbackStatusInfo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **successfully_rolledback_instance_count** | **Integer** | The number of instances which have been successfully rolled back. | [optional][readonly] |
| **failed_rolledback_instance_count** | **Integer** | The number of instances which failed to rollback. | [optional][readonly] |
| **rollback_error** | [**ApiError**](ApiError.md) |  | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::RollbackStatusInfo.new(
  successfully_rolledback_instance_count: null,
  failed_rolledback_instance_count: null,
  rollback_error: null
)
```

