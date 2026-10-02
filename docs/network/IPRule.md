# AzureSDK::IPRule

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address_prefix** | **String** | Specifies the IP or IP range in CIDR format. Only IPV4 address is allowed. | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::IPRule.new(
  address_prefix: null
)
```

