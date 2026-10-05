# AzureRest::NetworkVirtualApplianceListResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | [**Array&lt;NetworkVirtualAppliance&gt;**](NetworkVirtualAppliance.md) | The NetworkVirtualAppliance items on this page |  |
| **next_link** | **String** | The link to the next page of items | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::NetworkVirtualApplianceListResult.new(
  value: null,
  next_link: null
)
```

