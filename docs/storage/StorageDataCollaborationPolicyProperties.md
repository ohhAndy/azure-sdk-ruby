# AzureRest::StorageDataCollaborationPolicyProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **allow_storage_connectors** | **Boolean** | Indicates whether storage connectors are allowed to created or managed on the storage account. | [optional] |
| **allow_blob_access_points** | **Boolean** | Indicates whether Blob Access Point configurations are allowed to be created or managed on the storage account. | [optional] |
| **allow_storage_data_shares** | **Boolean** | Indicates whether data shares are allowed to be created or managed on the storage account. | [optional] |
| **allow_cross_tenant_data_sharing** | **Boolean** | Indicates whether cross-entra tenant data sharing is allowed on the storage account. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::StorageDataCollaborationPolicyProperties.new(
  allow_storage_connectors: null,
  allow_blob_access_points: null,
  allow_storage_data_shares: null,
  allow_cross_tenant_data_sharing: null
)
```

