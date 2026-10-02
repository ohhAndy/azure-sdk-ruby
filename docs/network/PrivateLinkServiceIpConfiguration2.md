# AzureSDK::PrivateLinkServiceIpConfiguration2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Resource ID. | [optional] |
| **properties** | [**PrivateLinkServiceIpConfigurationProperties2**](PrivateLinkServiceIpConfigurationProperties2.md) |  | [optional] |
| **name** | **String** | The name of private link service ip configuration. | [optional] |
| **etag** | **String** | A unique read-only string that changes whenever the resource is updated. | [optional][readonly] |
| **type** | **String** | The resource type. | [optional][readonly] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::PrivateLinkServiceIpConfiguration2.new(
  id: null,
  properties: null,
  name: null,
  etag: null,
  type: null
)
```

