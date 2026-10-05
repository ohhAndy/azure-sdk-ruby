# AzureRest::BastionShareableLinkListResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | [**Array&lt;BastionShareableLink&gt;**](BastionShareableLink.md) | The BastionShareableLink items on this page |  |
| **next_link** | **String** | The link to the next page of items | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::BastionShareableLinkListResult.new(
  value: null,
  next_link: null
)
```

