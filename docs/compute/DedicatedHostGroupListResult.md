# AzureRest::DedicatedHostGroupListResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | [**Array&lt;DedicatedHostGroup&gt;**](DedicatedHostGroup.md) | The list of dedicated host groups. |  |
| **next_link** | **String** | The URI to fetch the next page of Dedicated Host Groups. Call ListNext() with this URI to fetch the next page of Dedicated Host Groups. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::DedicatedHostGroupListResult.new(
  value: null,
  next_link: null
)
```

