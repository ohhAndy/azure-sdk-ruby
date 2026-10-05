# AzureRest::CapabilityList

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | [**Array&lt;Capability&gt;**](Capability.md) | The Capability items on this page | [readonly] |
| **next_link** | **String** | The link to the next page of items | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::CapabilityList.new(
  value: null,
  next_link: null
)
```

