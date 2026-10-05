# AzureRest::SubnetListResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | [**Array&lt;Subnet&gt;**](Subnet.md) | The Subnet items on this page |  |
| **next_link** | **String** | The link to the next page of items | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::SubnetListResult.new(
  value: null,
  next_link: null
)
```

