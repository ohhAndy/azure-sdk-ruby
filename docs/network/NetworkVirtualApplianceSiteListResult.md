# AzureRest::NetworkVirtualApplianceSiteListResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | [**Array&lt;VirtualApplianceSite&gt;**](VirtualApplianceSite.md) | The VirtualApplianceSite items on this page |  |
| **next_link** | **String** | The link to the next page of items | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::NetworkVirtualApplianceSiteListResult.new(
  value: null,
  next_link: null
)
```

