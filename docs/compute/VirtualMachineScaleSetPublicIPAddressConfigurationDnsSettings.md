# AzureSDK::VirtualMachineScaleSetPublicIPAddressConfigurationDnsSettings

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **domain_name_label** | **String** | The Domain name label.The concatenation of the domain name label and vm index will be the domain name labels of the PublicIPAddress resources that will be created |  |
| **domain_name_label_scope** | [**DomainNameLabelScopeTypes**](DomainNameLabelScopeTypes.md) |  | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::VirtualMachineScaleSetPublicIPAddressConfigurationDnsSettings.new(
  domain_name_label: null,
  domain_name_label_scope: null
)
```

