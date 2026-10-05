# AzureRest::ServerPrivateEndpointConnection

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Resource ID. | [optional][readonly] |
| **properties** | [**PrivateEndpointConnectionProperties**](PrivateEndpointConnectionProperties.md) |  | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::ServerPrivateEndpointConnection.new(
  id: null,
  properties: null
)
```

