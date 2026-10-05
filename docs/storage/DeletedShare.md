# AzureRest::DeletedShare

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **deleted_share_name** | **String** | Required. Identify the name of the deleted share that will be restored. |  |
| **deleted_share_version** | **String** | Required. Identify the version of the deleted share that will be restored. |  |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::DeletedShare.new(
  deleted_share_name: null,
  deleted_share_version: null
)
```

