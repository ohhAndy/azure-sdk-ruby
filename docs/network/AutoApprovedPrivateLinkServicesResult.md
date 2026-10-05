# AzureRest::AutoApprovedPrivateLinkServicesResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | [**Array&lt;AutoApprovedPrivateLinkService&gt;**](AutoApprovedPrivateLinkService.md) | The AutoApprovedPrivateLinkService items on this page |  |
| **next_link** | **String** | The link to the next page of items | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::AutoApprovedPrivateLinkServicesResult.new(
  value: null,
  next_link: null
)
```

