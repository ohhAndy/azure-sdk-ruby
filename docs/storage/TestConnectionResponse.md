# AzureRest::TestConnectionResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **storage_connector_method_name** | **String** | Indicates the method used to validate the connection to the backing data store. Valid values are &#x60;GetBlob&#x60; and &#x60;ListBlobs&#x60; for failure, and &#x60;TestExistingConnection&#x60; for success. |  |
| **storage_connector_error_message** | **String** | A string representing the error received from the backing data store. Format will vary depending on the data store type and will be capped at 1 MB in size. The error message will be empty if the connection was successful. | [optional] |
| **storage_connector_request_id** | **String** | The request Id associated with the request sent to the backing data store for validation. |  |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::TestConnectionResponse.new(
  storage_connector_method_name: null,
  storage_connector_error_message: null,
  storage_connector_request_id: null
)
```

