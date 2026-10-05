# AzureRest::VirtualMachinePublicIPAddressConfigurationProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **idle_timeout_in_minutes** | **Integer** | The idle timeout of the public IP address. | [optional] |
| **delete_option** | [**DeleteOptions**](DeleteOptions.md) |  | [optional] |
| **dns_settings** | [**VirtualMachinePublicIPAddressDnsSettingsConfiguration**](VirtualMachinePublicIPAddressDnsSettingsConfiguration.md) |  | [optional] |
| **ip_tags** | [**Array&lt;VirtualMachineIpTag&gt;**](VirtualMachineIpTag.md) | The list of IP tags associated with the public IP address. | [optional] |
| **public_ip_prefix** | [**SubResource**](SubResource.md) |  | [optional] |
| **public_ip_address_version** | [**IPVersions**](IPVersions.md) |  | [optional] |
| **public_ip_allocation_method** | [**PublicIPAllocationMethod**](PublicIPAllocationMethod.md) |  | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::VirtualMachinePublicIPAddressConfigurationProperties.new(
  idle_timeout_in_minutes: null,
  delete_option: null,
  dns_settings: null,
  ip_tags: null,
  public_ip_prefix: null,
  public_ip_address_version: null,
  public_ip_allocation_method: null
)
```

