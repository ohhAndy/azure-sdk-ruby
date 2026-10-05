# AzureRest::StorageConnectorProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **unique_id** | **String** | System-generated GUID identifier for the Storage Connector. Not a valid input parameter when creating. | [optional][readonly] |
| **state** | **String** | State - Active or Inactive. Whether or not the Storage Connector should start as active (default: Active) (While set to false on the Storage Connector, all data plane requests using this Storage Connector fail, and this Storage Connector is not billed if it would be otherwise. | [optional][default to &#39;Active&#39;] |
| **creation_time** | **String** | System-generated creation time of the Storage Connector in ISO 8601 date-time format (YYYY-MM-DDTHH:mm:ssZ). Not a valid input parameter during creating. | [optional][readonly] |
| **description** | **String** | Arbitrary description of this Storage Connector. Max 250 characters. | [optional] |
| **test_connection** | **Boolean** | Test connection to backing data source before creating the storage connector. | [optional][default to false] |
| **data_source_type** | [**StorageConnectorDataSourceType**](StorageConnectorDataSourceType.md) |  |  |
| **source** | [**StorageConnectorSource**](StorageConnectorSource.md) |  |  |
| **provisioning_state** | [**NativeDataSharingProvisioningState**](NativeDataSharingProvisioningState.md) |  | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::StorageConnectorProperties.new(
  unique_id: null,
  state: null,
  creation_time: null,
  description: null,
  test_connection: null,
  data_source_type: null,
  source: null,
  provisioning_state: null
)
```

