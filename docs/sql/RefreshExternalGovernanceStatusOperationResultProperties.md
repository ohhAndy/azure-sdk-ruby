# AzureSDK::RefreshExternalGovernanceStatusOperationResultProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **request_id** | **String** | Universally Unique Identifier | [optional] |
| **request_type** | **String** | Request type. | [optional][readonly] |
| **queued_time** | **String** | Queued time. | [optional][readonly] |
| **server_name** | **String** | Server name. | [optional][readonly] |
| **status** | **String** | Operation status. | [optional][readonly] |
| **error_message** | **String** | Error message. | [optional][readonly] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::RefreshExternalGovernanceStatusOperationResultProperties.new(
  request_id: null,
  request_type: null,
  queued_time: null,
  server_name: null,
  status: null,
  error_message: null
)
```

