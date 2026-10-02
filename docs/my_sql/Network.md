# AzureSDK::Network

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **public_network_access** | [**EnableStatusEnum**](EnableStatusEnum.md) |  | [optional] |
| **delegated_subnet_resource_id** | **String** | Delegated subnet resource id used to setup vnet for a server. | [optional] |
| **private_dns_zone_resource_id** | **String** | Private DNS zone resource id. | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::Network.new(
  public_network_access: null,
  delegated_subnet_resource_id: null,
  private_dns_zone_resource_id: null
)
```

