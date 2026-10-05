# AzureRest::StorageConnectorPropertiesUpdate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **state** | **String** | State - Active or Inactive. Whether or not the Storage Connector should start as active (default: Active) (While set to false on the Storage Connector, all data plane requests using this Storage Connector fail, and this Storage Connector is not billed if it would be otherwise. | [optional][default to &#39;Active&#39;] |
| **description** | **String** | Arbitrary description of this Storage Connector. Max 250 characters. | [optional] |
| **test_connection** | **Boolean** | Test connection to backing data source before creating the storage connector. | [optional][default to false] |
| **source** | [**StorageConnectorSourceUpdate**](StorageConnectorSourceUpdate.md) |  | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::StorageConnectorPropertiesUpdate.new(
  state: null,
  description: null,
  test_connection: null,
  source: null
)
```

