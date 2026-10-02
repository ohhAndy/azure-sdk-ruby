# AzureSDK::BlobAccessPointConnectionTestResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **method_name** | **String** | The name of the request attempted against the backing data source. |  |
| **error_message** | **String** | A normalized and redacted error message received from the backing data source. This value is empty when the connection test succeeds. | [optional] |
| **request_id** | **String** | The request ID associated with the request sent to the backing data source for validation. |  |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::BlobAccessPointConnectionTestResponse.new(
  method_name: null,
  error_message: null,
  request_id: null
)
```

