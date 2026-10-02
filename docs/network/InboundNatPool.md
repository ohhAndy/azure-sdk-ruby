# AzureSDK::InboundNatPool

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Resource ID. | [optional] |
| **properties** | [**InboundNatPoolPropertiesFormat**](InboundNatPoolPropertiesFormat.md) |  | [optional] |
| **name** | **String** | The name of the resource that is unique within the set of inbound NAT pools used by the load balancer. This name can be used to access the resource. | [optional] |
| **etag** | **String** | A unique read-only string that changes whenever the resource is updated. | [optional][readonly] |
| **type** | **String** | Type of the resource. | [optional][readonly] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::InboundNatPool.new(
  id: null,
  properties: null,
  name: null,
  etag: null,
  type: null
)
```

