# AzureRest::ManagedClusterAPIServerAccessProfile

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **authorized_ip_ranges** | **Array&lt;String&gt;** | The IP ranges authorized to access the Kubernetes API server. IP ranges are specified in CIDR format, e.g. 137.117.106.88/29. This feature is not compatible with clusters that use Public IP Per Node, or clusters that are using a Basic Load Balancer. For more information see [API server authorized IP ranges](https://docs.microsoft.com/azure/aks/api-server-authorized-ip-ranges). | [optional] |
| **enable_private_cluster** | **Boolean** | Whether to create the cluster as a private cluster or not. For more details, see [Creating a private AKS cluster](https://docs.microsoft.com/azure/aks/private-clusters). | [optional] |
| **private_dns_zone** | **String** | The private DNS zone mode for the cluster. The default is System. For more details see [configure private DNS zone](https://docs.microsoft.com/azure/aks/private-clusters#configure-private-dns-zone). Allowed values are &#39;system&#39; and &#39;none&#39;. | [optional] |
| **enable_private_cluster_public_fqdn** | **Boolean** | Whether to create additional public FQDN for private cluster or not. | [optional] |
| **disable_run_command** | **Boolean** | Whether to disable run command for the cluster or not. | [optional] |
| **enable_vnet_integration** | **Boolean** | Whether to enable apiserver vnet integration for the cluster or not. See aka.ms/AksVnetIntegration for more details. | [optional] |
| **subnet_id** | **String** | The subnet to be used when apiserver vnet integration is enabled. It is required when creating a new cluster with BYO Vnet, or when updating an existing cluster to enable apiserver vnet integration. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::ManagedClusterAPIServerAccessProfile.new(
  authorized_ip_ranges: null,
  enable_private_cluster: null,
  private_dns_zone: null,
  enable_private_cluster_public_fqdn: null,
  disable_run_command: null,
  enable_vnet_integration: null,
  subnet_id: null
)
```

