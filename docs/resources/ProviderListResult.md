# AzureRest::ProviderListResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | [**Array&lt;Provider&gt;**](Provider.md) | The Provider items on this page |  |
| **next_link** | **String** | The link to the next page of items | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::ProviderListResult.new(
  value: null,
  next_link: null
)
```

