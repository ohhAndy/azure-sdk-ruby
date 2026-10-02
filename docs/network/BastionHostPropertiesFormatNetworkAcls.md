# AzureSDK::BastionHostPropertiesFormatNetworkAcls

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ip_rules** | [**Array&lt;IPRule&gt;**](IPRule.md) | Sets the IP ACL rules for Developer Bastion Host. | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::BastionHostPropertiesFormatNetworkAcls.new(
  ip_rules: null
)
```

