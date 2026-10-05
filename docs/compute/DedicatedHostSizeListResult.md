# AzureRest::DedicatedHostSizeListResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | **Array&lt;String&gt;** | The list of dedicated host sizes. | [optional] |
| **next_link** | **String** | The link to the next page of items. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::DedicatedHostSizeListResult.new(
  value: null,
  next_link: null
)
```

