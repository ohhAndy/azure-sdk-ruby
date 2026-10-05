# AzureRest::BlobAccessPointConfigurationConnection

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **blob_access_point_configuration_name** | **String** | Name of the Blob Access Point Configuration to connect to. | [optional] |
| **blob_access_point_configuration_unique_id** | **String** | System-generated unique identifier of the Blob Access Point Configuration to connect to. If not provided on create, the service looks up and persists the current unique id. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::BlobAccessPointConfigurationConnection.new(
  blob_access_point_configuration_name: null,
  blob_access_point_configuration_unique_id: null
)
```

