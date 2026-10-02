# AzureSDK::PublicIPPrefixPropertiesFormat

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **public_ip_address_version** | [**IPVersion**](IPVersion.md) |  | [optional] |
| **ip_tags** | [**Array&lt;IpTag&gt;**](IpTag.md) | The list of tags associated with the public IP prefix. | [optional] |
| **prefix_length** | **Integer** | The Length of the Public IP Prefix. | [optional] |
| **ip_prefix** | **String** | The allocated Prefix. | [optional][readonly] |
| **public_ip_addresses** | [**Array&lt;ReferencedPublicIpAddress&gt;**](ReferencedPublicIpAddress.md) | The list of all referenced PublicIPAddresses. | [optional][readonly] |
| **load_balancer_frontend_ip_configuration** | [**SubResource**](SubResource.md) |  | [optional] |
| **custom_ip_prefix** | [**SubResource**](SubResource.md) |  | [optional] |
| **resource_guid** | **String** | The resource GUID property of the public IP prefix resource. | [optional][readonly] |
| **provisioning_state** | [**ProvisioningState**](ProvisioningState.md) |  | [optional] |
| **nat_gateway** | [**NatGateway**](NatGateway.md) |  | [optional] |
| **upgraded_to_v2** | **Boolean** | Whether the public IP prefix SKU has been upgraded from Standard to StandardV2. | [optional][readonly] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::PublicIPPrefixPropertiesFormat.new(
  public_ip_address_version: null,
  ip_tags: null,
  prefix_length: null,
  ip_prefix: null,
  public_ip_addresses: null,
  load_balancer_frontend_ip_configuration: null,
  custom_ip_prefix: null,
  resource_guid: null,
  provisioning_state: null,
  nat_gateway: null,
  upgraded_to_v2: null
)
```

