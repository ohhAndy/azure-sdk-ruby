# AzureSDK::StorageAccount

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name of the storage account. | [optional] |
| **is_default** | **Boolean** | Whether or not the storage account is the default storage account. | [optional] |
| **container** | **String** | The container in the storage account, only to be specified for WASB storage accounts. | [optional] |
| **file_system** | **String** | The filesystem, only to be specified for Azure Data Lake Storage Gen 2. | [optional] |
| **key** | **String** | The storage account access key. | [optional] |
| **resource_id** | **String** | The resource ID of storage account, only to be specified for Azure Data Lake Storage Gen 2. | [optional] |
| **msi_resource_id** | **String** | The managed identity (MSI) that is allowed to access the storage account, only to be specified for Azure Data Lake Storage Gen 2. | [optional] |
| **saskey** | **String** | The shared access signature key. | [optional] |
| **fileshare** | **String** | The file share name. | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::StorageAccount.new(
  name: null,
  is_default: null,
  container: null,
  file_system: null,
  key: null,
  resource_id: null,
  msi_resource_id: null,
  saskey: null,
  fileshare: null
)
```

