# AzureSDK::TableSignedIdentifier

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | unique-64-character-value of the stored access policy. |  |
| **access_policy** | [**TableAccessPolicy**](TableAccessPolicy.md) |  | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::TableSignedIdentifier.new(
  id: null,
  access_policy: null
)
```

