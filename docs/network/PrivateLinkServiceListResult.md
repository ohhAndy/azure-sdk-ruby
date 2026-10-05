# AzureRest::PrivateLinkServiceListResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | [**Array&lt;PrivateLinkService&gt;**](PrivateLinkService.md) | The PrivateLinkService items on this page |  |
| **next_link** | **String** | The link to the next page of items | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::PrivateLinkServiceListResult.new(
  value: null,
  next_link: null
)
```

