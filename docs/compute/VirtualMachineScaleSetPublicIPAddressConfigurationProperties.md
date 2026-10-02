# AzureSDK::VirtualMachineScaleSetPublicIPAddressConfigurationProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **idle_timeout_in_minutes** | **Integer** | The idle timeout of the public IP address. | [optional] |
| **dns_settings** | [**VirtualMachineScaleSetPublicIPAddressConfigurationDnsSettings**](VirtualMachineScaleSetPublicIPAddressConfigurationDnsSettings.md) |  | [optional] |
| **ip_tags** | [**Array&lt;VirtualMachineScaleSetIpTag&gt;**](VirtualMachineScaleSetIpTag.md) | The list of IP tags associated with the public IP address. | [optional] |
| **public_ip_prefix** | [**SubResource**](SubResource.md) |  | [optional] |
| **public_ip_address_version** | [**IPVersion**](IPVersion.md) |  | [optional] |
| **delete_option** | [**DeleteOptions**](DeleteOptions.md) |  | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::VirtualMachineScaleSetPublicIPAddressConfigurationProperties.new(
  idle_timeout_in_minutes: null,
  dns_settings: null,
  ip_tags: null,
  public_ip_prefix: null,
  public_ip_address_version: null,
  delete_option: null
)
```

