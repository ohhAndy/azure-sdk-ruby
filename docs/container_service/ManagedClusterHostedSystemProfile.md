# AzureRest::ManagedClusterHostedSystemProfile

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **enabled** | **Boolean** | Whether to enable hosted system addons for the cluster. | [optional] |
| **system_node_subnet_id** | **String** | The ID of the subnet that will be joined by system nodes managed and hosted by AKS for running critical system addons. This ID must be provided together with &#x60;nodeSubnetID&#x60; and &#x60;apiserverAccessProfile.subnetId&#x60;, and all three subnet IDs must belong to the same VNet. If you don’t specify it, AKS will create a subnet in the managed resource group using a default /26 CIDR. | [optional] |
| **node_subnet_id** | **String** | The ID of the subnet that will be joined by worker nodes managed by node auto provisioner for running workload pods in your tenant. This must be provided together with &#x60;systemNodeSubnetID&#x60; and &#x60;apiserverAccessProfile.subnetId&#x60;, and all three subnet IDs must be in the same VNet. If you don’t specify it, AKS will create a subnet in the managed resource group using a default /16 CIDR. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::ManagedClusterHostedSystemProfile.new(
  enabled: null,
  system_node_subnet_id: null,
  node_subnet_id: null
)
```

