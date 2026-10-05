# AzureRest::NetworkIsolationSettings

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **storage_account_resource_id** | **String** | The resource id for the storage account used to store BACPAC file. If set, private endpoint connection will be created for the storage account. Must match storage account used for StorageUri parameter. | [optional] |
| **sql_server_resource_id** | **String** | The resource id for the SQL server which is the target of this request. If set, private endpoint connection will be created for the SQL server. Must match server which is target of the operation. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::NetworkIsolationSettings.new(
  storage_account_resource_id: null,
  sql_server_resource_id: null
)
```

