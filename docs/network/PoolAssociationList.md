# AzureRest::PoolAssociationList

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | [**Array&lt;PoolAssociation&gt;**](PoolAssociation.md) | The PoolAssociation items on this page |  |
| **next_link** | **String** | The link to the next page of items | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::PoolAssociationList.new(
  value: null,
  next_link: null
)
```

