# AzureRest::EndpointDetail

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ip_address** | **String** | An IP Address that Domain Name currently resolves to. | [optional] |
| **port** | **Integer** | The port an endpoint is connected to. | [optional] |
| **protocol** | **String** | The protocol used for connection | [optional] |
| **description** | **String** | Description of the detail | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::EndpointDetail.new(
  ip_address: null,
  port: null,
  protocol: null,
  description: null
)
```

