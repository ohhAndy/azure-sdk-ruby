# AzureSDK::ServerEditionCapabilityV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Server edition name | [optional][readonly] |
| **default_sku** | **String** | Default Sku name | [optional][readonly] |
| **default_storage_size** | **Integer** | Default storage size | [optional][readonly] |
| **supported_storage_editions** | [**Array&lt;StorageEditionCapability&gt;**](StorageEditionCapability.md) | A list of supported storage editions | [optional][readonly] |
| **supported_skus** | [**Array&lt;SkuCapabilityV2&gt;**](SkuCapabilityV2.md) | A list of supported Skus | [optional][readonly] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::ServerEditionCapabilityV2.new(
  name: null,
  default_sku: null,
  default_storage_size: null,
  supported_storage_editions: null,
  supported_skus: null
)
```

