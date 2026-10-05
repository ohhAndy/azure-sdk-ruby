# AzureRest::IpAllocationListResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | [**Array&lt;IpAllocation&gt;**](IpAllocation.md) | The IpAllocation items on this page |  |
| **next_link** | **String** | The link to the next page of items | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::IpAllocationListResult.new(
  value: null,
  next_link: null
)
```

