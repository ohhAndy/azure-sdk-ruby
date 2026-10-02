# AzureSDK::IPRule

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | **String** | Specifies the IP or IP range in CIDR format. |  |
| **action** | **String** | The action of IP ACL rule. | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::IPRule.new(
  value: null,
  action: null
)
```

