# AzureRest::AvailablePrivateEndpointType

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name of the service and resource. | [optional] |
| **id** | **String** | A unique identifier of the AvailablePrivateEndpoint Type resource. | [optional] |
| **type** | **String** | Resource type. | [optional] |
| **resource_name** | **String** | The name of the service and resource. | [optional] |
| **display_name** | **String** | Display name of the resource. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::AvailablePrivateEndpointType.new(
  name: null,
  id: null,
  type: null,
  resource_name: null,
  display_name: null
)
```

