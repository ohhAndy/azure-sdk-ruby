# AzureSDK::ManagedClusterIngressProfileWebAppRouting

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **enabled** | **Boolean** | Whether to enable the Application Routing add-on. | [optional] |
| **gateway_api_implementations** | [**ManagedClusterWebAppRoutingGatewayAPIImplementations**](ManagedClusterWebAppRoutingGatewayAPIImplementations.md) |  | [optional] |
| **dns_zone_resource_ids** | **Array&lt;String&gt;** | Resource IDs of the DNS zones to be associated with the Application Routing add-on. Used only when Application Routing add-on is enabled. Public and private DNS zones can be in different resource groups, but all public DNS zones must be in the same resource group and all private DNS zones must be in the same resource group. | [optional] |
| **nginx** | [**ManagedClusterIngressProfileNginx**](ManagedClusterIngressProfileNginx.md) |  | [optional] |
| **identity** | [**UserAssignedIdentity**](UserAssignedIdentity.md) |  | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::ManagedClusterIngressProfileWebAppRouting.new(
  enabled: null,
  gateway_api_implementations: null,
  dns_zone_resource_ids: null,
  nginx: null,
  identity: null
)
```

