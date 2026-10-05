# AzureRest::StorageDataShareProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data_share_identifier** | **String** | System-generated GUID identifier for the Storage DataShare. Not a valid input parameter when creating. | [optional][readonly] |
| **description** | **String** | Arbitrary description of this Data Share. Max 250 characters. | [optional] |
| **data_share_uri** | **String** | The DataShare URI to be shared with the consumer. URI Format - &#39;azds://&lt;location&gt;:&lt;dataShareName&gt;:&lt;dataShareIdentifier&gt;&#39;. | [optional][readonly] |
| **access_policies** | [**Array&lt;StorageDataShareAccessPolicy&gt;**](StorageDataShareAccessPolicy.md) | List of access policies that specify the permission allowed to a managed identity. For Create - This property is required and cannot be null. If no access policies are provided at creation time, specify an empty array. For Update - This property is optional. If set to null or not passed, the existing access policies are left unchanged. If provided with a non-null value, the existing access policies are replaced with the specified list. |  |
| **assets** | [**Array&lt;StorageDataShareAsset&gt;**](StorageDataShareAsset.md) | List of assets that specify the properties of the shared resources. For Create - This property is required and cannot be null. If no assets are provided at creation time, specify an empty array. For Update - This property is optional. If set to null or not passed, the existing assets are left unchanged. If provided with a non-null value, the existing assets are replaced with the specified list. |  |
| **provisioning_state** | [**NativeDataSharingProvisioningState**](NativeDataSharingProvisioningState.md) |  | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::StorageDataShareProperties.new(
  data_share_identifier: null,
  description: null,
  data_share_uri: null,
  access_policies: null,
  assets: null,
  provisioning_state: null
)
```

