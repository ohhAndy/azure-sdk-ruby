# AzureSDK::Plan

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The plan ID. | [optional] |
| **publisher** | **String** | The publisher ID. | [optional] |
| **product** | **String** | The offer ID. | [optional] |
| **promotion_code** | **String** | The promotion code. | [optional] |
| **version** | **String** | The plan&#39;s version. | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::Plan.new(
  name: null,
  publisher: null,
  product: null,
  promotion_code: null,
  version: null
)
```

