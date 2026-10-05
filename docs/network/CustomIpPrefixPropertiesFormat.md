# AzureRest::CustomIpPrefixPropertiesFormat

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **asn** | **String** | The ASN for CIDR advertising. Should be an integer as string. | [optional] |
| **cidr** | **String** | The prefix range in CIDR notation. Should include the start address and the prefix length. | [optional] |
| **signed_message** | **String** | Signed message for WAN validation. | [optional] |
| **authorization_message** | **String** | Authorization message for WAN validation. | [optional] |
| **custom_ip_prefix_parent** | [**SubResource**](SubResource.md) |  | [optional] |
| **child_custom_ip_prefixes** | [**Array&lt;SubResource&gt;**](SubResource.md) | The list of all Children for IPv6 /48 CustomIpPrefix. | [optional][readonly] |
| **commissioned_state** | [**CommissionedState**](CommissionedState.md) |  | [optional] |
| **express_route_advertise** | **Boolean** | Whether to do express route advertise. | [optional] |
| **geo** | [**Geo**](Geo.md) |  | [optional] |
| **no_internet_advertise** | **Boolean** | Whether to Advertise the range to Internet. | [optional] |
| **prefix_type** | [**CustomIpPrefixType**](CustomIpPrefixType.md) |  | [optional] |
| **public_ip_prefixes** | [**Array&lt;SubResource&gt;**](SubResource.md) | The list of all referenced PublicIpPrefixes. | [optional][readonly] |
| **resource_guid** | **String** | The resource GUID property of the custom IP prefix resource. | [optional][readonly] |
| **failed_reason** | **String** | The reason why resource is in failed state. | [optional][readonly] |
| **provisioning_state** | [**ProvisioningState**](ProvisioningState.md) |  | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::CustomIpPrefixPropertiesFormat.new(
  asn: null,
  cidr: null,
  signed_message: null,
  authorization_message: null,
  custom_ip_prefix_parent: null,
  child_custom_ip_prefixes: null,
  commissioned_state: null,
  express_route_advertise: null,
  geo: null,
  no_internet_advertise: null,
  prefix_type: null,
  public_ip_prefixes: null,
  resource_guid: null,
  failed_reason: null,
  provisioning_state: null
)
```

