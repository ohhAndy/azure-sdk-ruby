# AzureSDK::ServiceAssociationLinksListResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | [**Array&lt;ServiceAssociationLink&gt;**](ServiceAssociationLink.md) | The ServiceAssociationLink items on this page |  |
| **next_link** | **String** | The link to the next page of items | [optional][readonly] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::ServiceAssociationLinksListResult.new(
  value: null,
  next_link: null
)
```

