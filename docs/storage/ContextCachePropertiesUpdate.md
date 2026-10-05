# AzureRest::ContextCachePropertiesUpdate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **description** | **String** | Account description. | [optional] |
| **encryption** | [**AzureResourceManagerCommonTypesEncryption**](AzureResourceManagerCommonTypesEncryption.md) |  | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::ContextCachePropertiesUpdate.new(
  description: null,
  encryption: null
)
```

