# AzureSDK::StorageSkuListResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | [**Array&lt;SkuInformation&gt;**](SkuInformation.md) | Get the list result of storage SKUs and their properties. | [optional][readonly] |
| **next_link** | **String** |  | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::StorageSkuListResult.new(
  value: null,
  next_link: null
)
```

