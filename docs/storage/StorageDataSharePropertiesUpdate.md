# AzureSDK::StorageDataSharePropertiesUpdate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **description** | **String** | Arbitrary description of this Data Share. Max 250 characters. | [optional] |
| **access_policies** | [**Array&lt;StorageDataShareAccessPolicy&gt;**](StorageDataShareAccessPolicy.md) | List of access policies that specify the permission allowed to a managed identity. For Create - This property is required and cannot be null. If no access policies are provided at creation time, specify an empty array. For Update - This property is optional. If set to null or not passed, the existing access policies are left unchanged. If provided with a non-null value, the existing access policies are replaced with the specified list. | [optional] |
| **assets** | [**Array&lt;StorageDataShareAsset&gt;**](StorageDataShareAsset.md) | List of assets that specify the properties of the shared resources. For Create - This property is required and cannot be null. If no assets are provided at creation time, specify an empty array. For Update - This property is optional. If set to null or not passed, the existing assets are left unchanged. If provided with a non-null value, the existing assets are replaced with the specified list. | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::StorageDataSharePropertiesUpdate.new(
  description: null,
  access_policies: null,
  assets: null
)
```

