# AzureSDK::PublicIPAddressPropertiesFormat

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **public_ip_allocation_method** | [**IPAllocationMethod**](IPAllocationMethod.md) |  | [optional] |
| **public_ip_address_version** | [**IPVersion**](IPVersion.md) |  | [optional] |
| **ip_configuration** | [**IPConfiguration**](IPConfiguration.md) |  | [optional] |
| **dns_settings** | [**PublicIPAddressDnsSettings**](PublicIPAddressDnsSettings.md) |  | [optional] |
| **ddos_settings** | [**DdosSettings**](DdosSettings.md) |  | [optional] |
| **ip_tags** | [**Array&lt;IpTag&gt;**](IpTag.md) | The list of tags associated with the public IP address. | [optional] |
| **ip_address** | **String** | The IP address associated with the public IP address resource. | [optional] |
| **public_ip_prefix** | [**SubResource**](SubResource.md) |  | [optional] |
| **idle_timeout_in_minutes** | **Integer** | The idle timeout of the public IP address. | [optional] |
| **resource_guid** | **String** | The resource GUID property of the public IP address resource. | [optional][readonly] |
| **provisioning_state** | [**ProvisioningState**](ProvisioningState.md) |  | [optional] |
| **service_public_ip_address** | [**PublicIPAddress**](PublicIPAddress.md) |  | [optional] |
| **nat_gateway** | [**NatGateway**](NatGateway.md) |  | [optional] |
| **migration_phase** | [**PublicIPAddressMigrationPhase**](PublicIPAddressMigrationPhase.md) |  | [optional] |
| **linked_public_ip_address** | [**PublicIPAddress**](PublicIPAddress.md) |  | [optional] |
| **delete_option** | [**DeleteOptions**](DeleteOptions.md) |  | [optional] |
| **upgraded_to_v2** | **Boolean** | Whether the public IP address SKU has been upgraded from Standard to StandardV2. | [optional][readonly] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::PublicIPAddressPropertiesFormat.new(
  public_ip_allocation_method: null,
  public_ip_address_version: null,
  ip_configuration: null,
  dns_settings: null,
  ddos_settings: null,
  ip_tags: null,
  ip_address: null,
  public_ip_prefix: null,
  idle_timeout_in_minutes: null,
  resource_guid: null,
  provisioning_state: null,
  service_public_ip_address: null,
  nat_gateway: null,
  migration_phase: null,
  linked_public_ip_address: null,
  delete_option: null,
  upgraded_to_v2: null
)
```

