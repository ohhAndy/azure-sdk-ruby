# AzureSDK::SignedIdentifier

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | An unique identifier of the stored access policy. | [optional] |
| **access_policy** | [**AccessPolicy**](AccessPolicy.md) |  | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::SignedIdentifier.new(
  id: null,
  access_policy: null
)
```

