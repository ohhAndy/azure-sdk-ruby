# AzureSDK::ServerEditionCapability

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | [**CapabilityStatus**](CapabilityStatus.md) |  | [optional] |
| **reason** | **String** | Reason for the capability not being available. | [optional][readonly] |
| **name** | **String** | Name of compute tier. | [optional][readonly] |
| **default_sku_name** | **String** | Default compute name (SKU) for this computer tier. | [optional][readonly] |
| **supported_storage_editions** | [**Array&lt;StorageEditionCapability&gt;**](StorageEditionCapability.md) | List of storage editions supported by this compute tier and compute name. | [optional][readonly] |
| **supported_server_skus** | [**Array&lt;ServerSkuCapability&gt;**](ServerSkuCapability.md) | List of supported compute names (SKUs). | [optional][readonly] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::ServerEditionCapability.new(
  status: null,
  reason: null,
  name: null,
  default_sku_name: null,
  supported_storage_editions: null,
  supported_server_skus: null
)
```

