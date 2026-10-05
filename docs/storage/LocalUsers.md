# AzureRest::LocalUsers

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | [**Array&lt;LocalUser&gt;**](LocalUser.md) | The LocalUser items on this page |  |
| **next_link** | **String** | The link to the next page of items | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::LocalUsers.new(
  value: null,
  next_link: null
)
```

