# AzureRest::LoadBalancerBackendAddress

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **properties** | [**LoadBalancerBackendAddressPropertiesFormat**](LoadBalancerBackendAddressPropertiesFormat.md) |  | [optional] |
| **name** | **String** | Name of the backend address. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::LoadBalancerBackendAddress.new(
  properties: null,
  name: null
)
```

