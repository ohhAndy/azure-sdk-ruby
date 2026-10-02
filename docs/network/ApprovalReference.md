# AzureSDK::ApprovalReference

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **private_endpoint_id** | **String** | The ARM resource id of an existing approved private endpoint whose approval state is inherited by this connection. | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::ApprovalReference.new(
  private_endpoint_id: null
)
```

