# AzureSDK::ConnectivityEndpoint

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name of the endpoint. | [optional] |
| **protocol** | **String** | The protocol of the endpoint. | [optional] |
| **location** | **String** | The location of the endpoint. | [optional] |
| **port** | **Integer** | The port to connect to. | [optional] |
| **private_ip_address** | **String** | The private ip address of the endpoint. | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::ConnectivityEndpoint.new(
  name: null,
  protocol: null,
  location: null,
  port: null,
  private_ip_address: null
)
```

