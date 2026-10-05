# AzureRest::PrivateLinkResourceList

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | [**Array&lt;PrivateLinkResource&gt;**](PrivateLinkResource.md) | The PrivateLinkResource items on this page | [readonly] |
| **next_link** | **String** | The link to the next page of items | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::PrivateLinkResourceList.new(
  value: null,
  next_link: null
)
```

