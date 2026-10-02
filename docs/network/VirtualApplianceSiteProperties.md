# AzureSDK::VirtualApplianceSiteProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address_prefix** | **String** | Address Prefix. | [optional] |
| **o365_policy** | [**Office365PolicyProperties**](Office365PolicyProperties.md) |  | [optional] |
| **provisioning_state** | [**ProvisioningState**](ProvisioningState.md) |  | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::VirtualApplianceSiteProperties.new(
  address_prefix: null,
  o365_policy: null,
  provisioning_state: null
)
```

