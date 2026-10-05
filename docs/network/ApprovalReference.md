# AzureRest::ApprovalReference

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **private_endpoint_id** | **String** | The ARM resource id of an existing approved private endpoint whose approval state is inherited by this connection. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::ApprovalReference.new(
  private_endpoint_id: null
)
```

