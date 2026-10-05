# AzureRest::PrivateLinkServiceConnectionState2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** | Indicates whether the connection has been Approved/Rejected/Removed by the owner of the service. | [optional] |
| **description** | **String** | The reason for approval/rejection of the connection. | [optional] |
| **actions_required** | **String** | A message indicating if changes on the service provider require any updates on the consumer. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::PrivateLinkServiceConnectionState2.new(
  status: null,
  description: null,
  actions_required: null
)
```

