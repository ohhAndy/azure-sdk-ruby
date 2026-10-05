# AzureRest::ImportExportOperationResultProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **request_id** | **String** | Universally Unique Identifier | [optional] |
| **request_type** | **String** | Request type. | [optional][readonly] |
| **queued_time** | **String** | Queued time. | [optional][readonly] |
| **last_modified_time** | **String** | Last modified time. | [optional][readonly] |
| **blob_uri** | **String** | Blob Uri. | [optional][readonly] |
| **server_name** | **String** | Server name. | [optional][readonly] |
| **database_name** | **String** | Database name. | [optional][readonly] |
| **status** | **String** | Operation status. | [optional][readonly] |
| **error_message** | **String** | Error message. | [optional][readonly] |
| **private_endpoint_connections** | [**Array&lt;PrivateEndpointConnectionRequestStatus&gt;**](PrivateEndpointConnectionRequestStatus.md) | Gets the status of private endpoints associated with this request. | [optional][readonly] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::ImportExportOperationResultProperties.new(
  request_id: null,
  request_type: null,
  queued_time: null,
  last_modified_time: null,
  blob_uri: null,
  server_name: null,
  database_name: null,
  status: null,
  error_message: null,
  private_endpoint_connections: null
)
```

