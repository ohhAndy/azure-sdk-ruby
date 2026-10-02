# AzureSDK::SecretPatchProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | **String** | The value of the secret. | [optional] |
| **content_type** | **String** | The content type of the secret. | [optional] |
| **attributes** | [**SecretAttributes**](SecretAttributes.md) |  | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::SecretPatchProperties.new(
  value: null,
  content_type: null,
  attributes: null
)
```

