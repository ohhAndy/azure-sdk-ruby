# AzureRest::BlobRestoreStatus

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | [**BlobRestoreProgressStatus**](BlobRestoreProgressStatus.md) |  | [optional] |
| **failure_reason** | **String** | Failure reason when blob restore is failed. | [optional][readonly] |
| **restore_id** | **String** | Id for tracking blob restore request. | [optional][readonly] |
| **parameters** | [**BlobRestoreParameters**](BlobRestoreParameters.md) |  | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::BlobRestoreStatus.new(
  status: null,
  failure_reason: null,
  restore_id: null,
  parameters: null
)
```

