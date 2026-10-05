# AzureRest::ResourceNavigationLinksListResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | [**Array&lt;ResourceNavigationLink&gt;**](ResourceNavigationLink.md) | The ResourceNavigationLink items on this page |  |
| **next_link** | **String** | The link to the next page of items | [optional][readonly] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::ResourceNavigationLinksListResult.new(
  value: null,
  next_link: null
)
```

