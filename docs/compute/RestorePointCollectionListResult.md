# AzureSDK::RestorePointCollectionListResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | [**Array&lt;RestorePointCollection&gt;**](RestorePointCollection.md) | Gets the list of restore point collections. |  |
| **next_link** | **String** | The uri to fetch the next page of RestorePointCollections. Call ListNext() with this to fetch the next page of RestorePointCollections. | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::RestorePointCollectionListResult.new(
  value: null,
  next_link: null
)
```

