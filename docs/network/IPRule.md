# AzureRest::IPRule

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address_prefix** | **String** | Specifies the IP or IP range in CIDR format. Only IPV4 address is allowed. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::IPRule.new(
  address_prefix: null
)
```

