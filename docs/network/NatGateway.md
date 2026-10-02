# AzureSDK::NatGateway

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Resource ID. | [optional] |
| **name** | **String** | Resource name. | [optional][readonly] |
| **type** | **String** | Resource type. | [optional][readonly] |
| **location** | **String** | Resource location. | [optional] |
| **tags** | **Hash&lt;String, String&gt;** | Resource tags. | [optional] |
| **properties** | [**NatGatewayPropertiesFormat**](NatGatewayPropertiesFormat.md) |  | [optional] |
| **sku** | [**NatGatewaySku**](NatGatewaySku.md) |  | [optional] |
| **zones** | **Array&lt;String&gt;** | A list of availability zones denoting the zone in which Nat Gateway should be deployed. | [optional] |
| **etag** | **String** | A unique read-only string that changes whenever the resource is updated. | [optional][readonly] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::NatGateway.new(
  id: null,
  name: null,
  type: null,
  location: null,
  tags: null,
  properties: null,
  sku: null,
  zones: null,
  etag: null
)
```

