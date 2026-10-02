# AzureSDK::ServerVersionCapability

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | server version | [optional][readonly] |
| **supported_skus** | [**Array&lt;SkuCapability&gt;**](SkuCapability.md) | A list of supported Skus | [optional][readonly] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::ServerVersionCapability.new(
  name: null,
  supported_skus: null
)
```

