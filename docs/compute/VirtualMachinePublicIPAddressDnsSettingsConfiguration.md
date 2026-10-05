# AzureRest::VirtualMachinePublicIPAddressDnsSettingsConfiguration

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **domain_name_label** | **String** | The Domain name label prefix of the PublicIPAddress resources that will be created. The generated name label is the concatenation of the domain name label and vm network profile unique ID. |  |
| **domain_name_label_scope** | [**DomainNameLabelScopeTypes**](DomainNameLabelScopeTypes.md) |  | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::VirtualMachinePublicIPAddressDnsSettingsConfiguration.new(
  domain_name_label: null,
  domain_name_label_scope: null
)
```

