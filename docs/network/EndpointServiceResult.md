# AzureRest::EndpointServiceResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Resource ID. | [optional] |
| **name** | **String** | Name of the endpoint service. | [optional][readonly] |
| **type** | **String** | Type of the endpoint service. | [optional][readonly] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::EndpointServiceResult.new(
  id: null,
  name: null,
  type: null
)
```

