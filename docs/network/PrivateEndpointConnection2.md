# AzureSDK::PrivateEndpointConnection2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Resource ID. | [optional] |
| **name** | **String** | Name of the resource. | [optional] |
| **type** | **String** | Resource type. | [optional][readonly] |
| **properties** | [**PrivateEndpointConnectionProperties2**](PrivateEndpointConnectionProperties2.md) |  | [optional] |
| **etag** | **String** | A unique read-only string that changes whenever the resource is updated. | [optional][readonly] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::PrivateEndpointConnection2.new(
  id: null,
  name: null,
  type: null,
  properties: null,
  etag: null
)
```

