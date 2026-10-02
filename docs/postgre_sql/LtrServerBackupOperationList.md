# AzureSDK::LtrServerBackupOperationList

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | [**Array&lt;BackupsLongTermRetentionOperation&gt;**](BackupsLongTermRetentionOperation.md) | The BackupsLongTermRetentionOperation items on this page |  |
| **next_link** | **String** | The link to the next page of items | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::LtrServerBackupOperationList.new(
  value: null,
  next_link: null
)
```

