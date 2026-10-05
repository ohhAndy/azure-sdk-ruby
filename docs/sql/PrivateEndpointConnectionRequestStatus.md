# AzureRest::PrivateEndpointConnectionRequestStatus

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **private_link_service_id** | **String** | Resource id for which the private endpoint is created. | [optional][readonly] |
| **private_endpoint_connection_name** | **String** | The connection name for the private endpoint. | [optional][readonly] |
| **status** | **String** | Status of this private endpoint connection. | [optional][readonly] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::PrivateEndpointConnectionRequestStatus.new(
  private_link_service_id: null,
  private_endpoint_connection_name: null,
  status: null
)
```

