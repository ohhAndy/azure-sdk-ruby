# AzureRest::ServerBackupListResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | [**Array&lt;ServerBackup&gt;**](ServerBackup.md) | The ServerBackup items on this page | [optional] |
| **next_link** | **String** | The link to the next page of items | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::ServerBackupListResult.new(
  value: null,
  next_link: null
)
```

