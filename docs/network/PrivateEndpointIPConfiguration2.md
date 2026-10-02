# AzureSDK::PrivateEndpointIPConfiguration2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **properties** | [**PrivateEndpointIPConfigurationProperties2**](PrivateEndpointIPConfigurationProperties2.md) |  | [optional] |
| **name** | **String** | The name of the resource that is unique within a resource group. | [optional] |
| **type** | **String** | The resource type. | [optional][readonly] |
| **etag** | **String** | A unique read-only string that changes whenever the resource is updated. | [optional][readonly] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::PrivateEndpointIPConfiguration2.new(
  properties: null,
  name: null,
  type: null,
  etag: null
)
```

