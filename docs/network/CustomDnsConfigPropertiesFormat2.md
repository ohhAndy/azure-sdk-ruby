# AzureSDK::CustomDnsConfigPropertiesFormat2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **fqdn** | **String** | Fqdn that resolves to private endpoint ip address. | [optional] |
| **ip_addresses** | **Array&lt;String&gt;** | A list of private ip addresses of the private endpoint. | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::CustomDnsConfigPropertiesFormat2.new(
  fqdn: null,
  ip_addresses: null
)
```

