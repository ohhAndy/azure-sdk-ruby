# AzureRest::VirtualApplianceNicProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **nic_type** | [**NicTypeInResponse**](NicTypeInResponse.md) |  | [optional] |
| **name** | **String** | NIC name. | [optional][readonly] |
| **public_ip_address** | **String** | Public IP address. | [optional][readonly] |
| **private_ip_address** | **String** | Private IP address. | [optional][readonly] |
| **public_ip_address_v6** | **String** | Public IPv6 address. Populated for dual-stack NVAs, including on additional-NIC configurations when the NVA is dual-stack. | [optional][readonly] |
| **private_ip_address_v6** | **String** | Private IPv6 address. Populated for dual-stack NVAs, including on additional-NIC configurations when the NVA is dual-stack. | [optional][readonly] |
| **instance_name** | **String** | Instance on which nic is attached. | [optional][readonly] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::VirtualApplianceNicProperties.new(
  nic_type: null,
  name: null,
  public_ip_address: null,
  private_ip_address: null,
  public_ip_address_v6: null,
  private_ip_address_v6: null,
  instance_name: null
)
```

