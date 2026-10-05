# AzureRest::BlobServiceItems

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | [**Array&lt;BlobServiceProperties&gt;**](BlobServiceProperties.md) | List of blob services returned. | [optional][readonly] |
| **next_link** | **String** |  | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::BlobServiceItems.new(
  value: null,
  next_link: null
)
```

