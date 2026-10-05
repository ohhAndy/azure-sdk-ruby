# AzureRest::VirtualMachineScaleSetUpdatePublicIPAddressConfigurationProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **idle_timeout_in_minutes** | **Integer** | The idle timeout of the public IP address. | [optional] |
| **dns_settings** | [**VirtualMachineScaleSetPublicIPAddressConfigurationDnsSettings**](VirtualMachineScaleSetPublicIPAddressConfigurationDnsSettings.md) |  | [optional] |
| **public_ip_prefix** | [**SubResource**](SubResource.md) |  | [optional] |
| **delete_option** | [**DeleteOptions**](DeleteOptions.md) |  | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::VirtualMachineScaleSetUpdatePublicIPAddressConfigurationProperties.new(
  idle_timeout_in_minutes: null,
  dns_settings: null,
  public_ip_prefix: null,
  delete_option: null
)
```

