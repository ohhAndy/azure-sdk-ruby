# AzureRest::StorageAccountInternetEndpoints

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **blob** | **String** | Gets the blob endpoint. | [optional][readonly] |
| **file** | **String** | Gets the file endpoint. | [optional][readonly] |
| **web** | **String** | Gets the web endpoint. | [optional][readonly] |
| **dfs** | **String** | Gets the dfs endpoint. | [optional][readonly] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::StorageAccountInternetEndpoints.new(
  blob: null,
  file: null,
  web: null,
  dfs: null
)
```

