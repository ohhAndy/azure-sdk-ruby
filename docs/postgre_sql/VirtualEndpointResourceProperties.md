# AzureRest::VirtualEndpointResourceProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **endpoint_type** | [**VirtualEndpointType**](VirtualEndpointType.md) |  | [optional] |
| **members** | **Array&lt;String&gt;** | List of servers that one of the virtual endpoints can refer to. | [optional] |
| **virtual_endpoints** | **Array&lt;String&gt;** | List of virtual endpoints for a server. | [optional][readonly] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::VirtualEndpointResourceProperties.new(
  endpoint_type: null,
  members: null,
  virtual_endpoints: null
)
```

