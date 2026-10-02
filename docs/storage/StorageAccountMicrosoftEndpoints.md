# AzureSDK::StorageAccountMicrosoftEndpoints

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **blob** | **String** | Gets the blob endpoint. | [optional][readonly] |
| **queue** | **String** | Gets the queue endpoint. | [optional][readonly] |
| **table** | **String** | Gets the table endpoint. | [optional][readonly] |
| **file** | **String** | Gets the file endpoint. | [optional][readonly] |
| **web** | **String** | Gets the web endpoint. | [optional][readonly] |
| **dfs** | **String** | Gets the dfs endpoint. | [optional][readonly] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::StorageAccountMicrosoftEndpoints.new(
  blob: null,
  queue: null,
  table: null,
  file: null,
  web: null,
  dfs: null
)
```

