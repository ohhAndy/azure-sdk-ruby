# AzureSDK::NatGatewayPropertiesFormat

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **idle_timeout_in_minutes** | **Integer** | The idle timeout of the nat gateway. | [optional] |
| **public_ip_addresses** | [**Array&lt;SubResource&gt;**](SubResource.md) | An array of public ip addresses V4 associated with the nat gateway resource. | [optional] |
| **public_ip_addresses_v6** | [**Array&lt;SubResource&gt;**](SubResource.md) | An array of public ip addresses V6 associated with the nat gateway resource. | [optional] |
| **public_ip_prefixes** | [**Array&lt;SubResource&gt;**](SubResource.md) | An array of public ip prefixes V4 associated with the nat gateway resource. | [optional] |
| **public_ip_prefixes_v6** | [**Array&lt;SubResource&gt;**](SubResource.md) | An array of public ip prefixes V6 associated with the nat gateway resource. | [optional] |
| **subnets** | [**Array&lt;SubResource&gt;**](SubResource.md) | An array of references to the subnets using this nat gateway resource. | [optional][readonly] |
| **source_virtual_network** | [**SubResource**](SubResource.md) |  | [optional] |
| **service_gateway** | [**SubResource**](SubResource.md) |  | [optional] |
| **nat64** | [**Nat64State**](Nat64State.md) |  | [optional] |
| **resource_guid** | **String** | The resource GUID property of the NAT gateway resource. | [optional][readonly] |
| **provisioning_state** | [**ProvisioningState**](ProvisioningState.md) |  | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::NatGatewayPropertiesFormat.new(
  idle_timeout_in_minutes: null,
  public_ip_addresses: null,
  public_ip_addresses_v6: null,
  public_ip_prefixes: null,
  public_ip_prefixes_v6: null,
  subnets: null,
  source_virtual_network: null,
  service_gateway: null,
  nat64: null,
  resource_guid: null,
  provisioning_state: null
)
```

