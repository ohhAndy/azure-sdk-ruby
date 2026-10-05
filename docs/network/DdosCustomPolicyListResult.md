# AzureRest::DdosCustomPolicyListResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | [**Array&lt;DdosCustomPolicy&gt;**](DdosCustomPolicy.md) | The DdosCustomPolicy items on this page |  |
| **next_link** | **String** | The link to the next page of items | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::DdosCustomPolicyListResult.new(
  value: null,
  next_link: null
)
```

