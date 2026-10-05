# AzureRest::ListBlobInventoryPolicy

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | [**Array&lt;BlobInventoryPolicy&gt;**](BlobInventoryPolicy.md) | List of blob inventory policies. | [optional][readonly] |
| **next_link** | **String** |  | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::ListBlobInventoryPolicy.new(
  value: null,
  next_link: null
)
```

