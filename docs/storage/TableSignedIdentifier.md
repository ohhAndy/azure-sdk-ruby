# AzureRest::TableSignedIdentifier

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | unique-64-character-value of the stored access policy. |  |
| **access_policy** | [**TableAccessPolicy**](TableAccessPolicy.md) |  | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::TableSignedIdentifier.new(
  id: null,
  access_policy: null
)
```

