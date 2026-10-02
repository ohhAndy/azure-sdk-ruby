# AzureSDK::ServerBackupV2ListResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | [**Array&lt;ServerBackupV2&gt;**](ServerBackupV2.md) | The ServerBackupV2 items on this page | [optional] |
| **next_link** | **String** | The link to the next page of items | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::ServerBackupV2ListResult.new(
  value: null,
  next_link: null
)
```

