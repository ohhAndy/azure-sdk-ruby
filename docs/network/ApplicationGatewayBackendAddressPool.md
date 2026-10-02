# AzureSDK::ApplicationGatewayBackendAddressPool

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Resource ID. | [optional] |
| **properties** | [**ApplicationGatewayBackendAddressPoolPropertiesFormat**](ApplicationGatewayBackendAddressPoolPropertiesFormat.md) |  | [optional] |
| **name** | **String** | Name of the backend address pool that is unique within an Application Gateway. | [optional] |
| **etag** | **String** | A unique read-only string that changes whenever the resource is updated. | [optional][readonly] |
| **type** | **String** | Type of the resource. | [optional][readonly] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::ApplicationGatewayBackendAddressPool.new(
  id: null,
  properties: null,
  name: null,
  etag: null,
  type: null
)
```

