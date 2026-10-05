# AzureRest::NetworkVirtualApplianceSkuListResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | [**Array&lt;NetworkVirtualApplianceSku&gt;**](NetworkVirtualApplianceSku.md) | The NetworkVirtualApplianceSku items on this page |  |
| **next_link** | **String** | The link to the next page of items | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::NetworkVirtualApplianceSkuListResult.new(
  value: null,
  next_link: null
)
```

