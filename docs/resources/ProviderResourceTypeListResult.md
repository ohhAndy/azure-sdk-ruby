# AzureRest::ProviderResourceTypeListResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | [**Array&lt;ProviderResourceType&gt;**](ProviderResourceType.md) | The ProviderResourceType items on this page |  |
| **next_link** | **String** | The link to the next page of items | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::ProviderResourceTypeListResult.new(
  value: null,
  next_link: null
)
```

