# AzureSDK::Network

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **public_network_access** | [**ServerPublicNetworkAccessState**](ServerPublicNetworkAccessState.md) |  | [optional] |
| **delegated_subnet_resource_id** | **String** | Resource identifier of the delegated subnet. Required during creation of a new server, in case you want the server to be integrated into your own virtual network. For an update operation, you only have to provide this property if you want to change the value assigned for the private DNS zone. | [optional] |
| **private_dns_zone_arm_resource_id** | **String** | Identifier of the private DNS zone. Required during creation of a new server, in case you want the server to be integrated into your own virtual network. For an update operation, you only have to provide this property if you want to change the value assigned for the private DNS zone. | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::Network.new(
  public_network_access: null,
  delegated_subnet_resource_id: null,
  private_dns_zone_arm_resource_id: null
)
```

