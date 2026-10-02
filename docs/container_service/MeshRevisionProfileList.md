# AzureSDK::MeshRevisionProfileList

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | [**Array&lt;MeshRevisionProfile&gt;**](MeshRevisionProfile.md) | The MeshRevisionProfile items on this page |  |
| **next_link** | **String** | The link to the next page of items | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::MeshRevisionProfileList.new(
  value: null,
  next_link: null
)
```

