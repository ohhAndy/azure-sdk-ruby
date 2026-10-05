# AzureRest::StorageSkuListResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | [**Array&lt;SkuInformation&gt;**](SkuInformation.md) | Get the list result of storage SKUs and their properties. | [optional][readonly] |
| **next_link** | **String** |  | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::StorageSkuListResult.new(
  value: null,
  next_link: null
)
```

