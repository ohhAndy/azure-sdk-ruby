# AzureRest::ApplicationGatewayBackendAddress

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **fqdn** | **String** | Fully qualified domain name (FQDN). | [optional] |
| **ip_address** | **String** | IP address. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::ApplicationGatewayBackendAddress.new(
  fqdn: null,
  ip_address: null
)
```

