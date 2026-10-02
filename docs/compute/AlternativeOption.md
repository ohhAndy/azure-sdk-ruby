# AzureSDK::AlternativeOption

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | [**AlternativeType**](AlternativeType.md) |  | [optional] |
| **value** | **String** | Indicates the alternative option value specified by the Publisher. This is the Offer name when the type is Offer or the Plan name when the type is Plan. | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::AlternativeOption.new(
  type: null,
  value: null
)
```

