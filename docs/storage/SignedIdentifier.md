# AzureRest::SignedIdentifier

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | An unique identifier of the stored access policy. | [optional] |
| **access_policy** | [**AccessPolicy**](AccessPolicy.md) |  | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::SignedIdentifier.new(
  id: null,
  access_policy: null
)
```

