# AzureRest::ManagedClusterProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **provisioning_state** | **String** | The current provisioning state. | [optional][readonly] |
| **power_state** | [**PowerState**](PowerState.md) |  | [optional] |
| **max_agent_pools** | **Integer** | The max number of agent pools for the managed cluster. | [optional][readonly] |
| **kubernetes_version** | **String** | The version of Kubernetes specified by the user. Both patch version &lt;major.minor.patch&gt; (e.g. 1.20.13) and &lt;major.minor&gt; (e.g. 1.20) are supported. When &lt;major.minor&gt; is specified, the latest supported GA patch version is chosen automatically. Updating the cluster with the same &lt;major.minor&gt; once it has been created (e.g. 1.14.x -&gt; 1.14) will not trigger an upgrade, even if a newer patch version is available. When you upgrade a supported AKS cluster, Kubernetes minor versions cannot be skipped. All upgrades must be performed sequentially by major version number. For example, upgrades between 1.14.x -&gt; 1.15.x or 1.15.x -&gt; 1.16.x are allowed, however 1.14.x -&gt; 1.16.x is not allowed. See [upgrading an AKS cluster](https://docs.microsoft.com/azure/aks/upgrade-cluster) for more details. | [optional] |
| **current_kubernetes_version** | **String** | The version of Kubernetes the Managed Cluster is running. If kubernetesVersion was a fully specified version &lt;major.minor.patch&gt;, this field will be exactly equal to it. If kubernetesVersion was &lt;major.minor&gt;, this field will contain the full &lt;major.minor.patch&gt; version being used. | [optional][readonly] |
| **dns_prefix** | **String** | The DNS prefix of the Managed Cluster. This cannot be updated once the Managed Cluster has been created. | [optional] |
| **fqdn_subdomain** | **String** | The FQDN subdomain of the private cluster with custom private dns zone. This cannot be updated once the Managed Cluster has been created. | [optional] |
| **fqdn** | **String** | The FQDN of the master pool. | [optional][readonly] |
| **private_fqdn** | **String** | The FQDN of private cluster. | [optional][readonly] |
| **azure_portal_fqdn** | **String** | The special FQDN used by the Azure Portal to access the Managed Cluster. This FQDN is for use only by the Azure Portal and should not be used by other clients. The Azure Portal requires certain Cross-Origin Resource Sharing (CORS) headers to be sent in some responses, which Kubernetes APIServer doesn&#39;t handle by default. This special FQDN supports CORS, allowing the Azure Portal to function properly. | [optional][readonly] |
| **agent_pool_profiles** | [**Array&lt;ManagedClusterAgentPoolProfile&gt;**](ManagedClusterAgentPoolProfile.md) | The agent pool properties. | [optional] |
| **linux_profile** | [**ContainerServiceLinuxProfile**](ContainerServiceLinuxProfile.md) |  | [optional] |
| **windows_profile** | [**ManagedClusterWindowsProfile**](ManagedClusterWindowsProfile.md) |  | [optional] |
| **service_principal_profile** | [**ManagedClusterServicePrincipalProfile**](ManagedClusterServicePrincipalProfile.md) |  | [optional] |
| **addon_profiles** | [**Hash&lt;String, ManagedClusterAddonProfile&gt;**](ManagedClusterAddonProfile.md) | The profile of managed cluster add-on. | [optional] |
| **pod_identity_profile** | [**ManagedClusterPodIdentityProfile**](ManagedClusterPodIdentityProfile.md) |  | [optional] |
| **oidc_issuer_profile** | [**ManagedClusterOIDCIssuerProfile**](ManagedClusterOIDCIssuerProfile.md) |  | [optional] |
| **node_resource_group** | **String** | The name of the resource group containing agent pool nodes. | [optional] |
| **node_resource_group_profile** | [**ManagedClusterNodeResourceGroupProfile**](ManagedClusterNodeResourceGroupProfile.md) |  | [optional] |
| **enable_rbac** | **Boolean** | Whether to enable Kubernetes Role-Based Access Control. | [optional] |
| **support_plan** | [**KubernetesSupportPlan**](KubernetesSupportPlan.md) |  | [optional] |
| **enable_fips** | **Boolean** | Whether to enable FIPS mode at the cluster level. When enabled, this setting enforces FIPS compliance for all AKS-managed components, such as the node operating system, addons, and [managed containerized components](https://aka.ms/aks/components/docs). See [Enable cluster-wide FIPS](https://aka.ms/aks/fips) for more details. When this property is enabled, all node pools in the cluster must also be FIPS-enabled. Although this property is available in a stable API version, cluster-wide FIPS remains a preview feature. Write requests whose resulting cluster state has this property set to true require the &#x60;Microsoft.ContainerService/EnableFIPSPreview&#x60; subscription feature registration. | [optional] |
| **network_profile** | [**ContainerServiceNetworkProfile**](ContainerServiceNetworkProfile.md) |  | [optional] |
| **aad_profile** | [**ManagedClusterAADProfile**](ManagedClusterAADProfile.md) |  | [optional] |
| **auto_upgrade_profile** | [**ManagedClusterAutoUpgradeProfile**](ManagedClusterAutoUpgradeProfile.md) |  | [optional] |
| **upgrade_settings** | [**ClusterUpgradeSettings**](ClusterUpgradeSettings.md) |  | [optional] |
| **auto_scaler_profile** | [**ManagedClusterPropertiesAutoScalerProfile**](ManagedClusterPropertiesAutoScalerProfile.md) |  | [optional] |
| **api_server_access_profile** | [**ManagedClusterAPIServerAccessProfile**](ManagedClusterAPIServerAccessProfile.md) |  | [optional] |
| **disk_encryption_set_id** | **String** | The Resource ID of the disk encryption set to use for enabling encryption at rest. This is of the form: &#39;/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/diskEncryptionSets/{encryptionSetName}&#39; | [optional] |
| **identity_profile** | [**Hash&lt;String, UserAssignedIdentity&gt;**](UserAssignedIdentity.md) | The user identity associated with the managed cluster. This identity will be used by the kubelet. Only one user assigned identity is allowed. The only accepted key is \&quot;kubeletidentity\&quot;, with value of \&quot;resourceId\&quot;: \&quot;/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ManagedIdentity/userAssignedIdentities/{identityName}\&quot;. | [optional] |
| **private_link_resources** | [**Array&lt;PrivateLinkResource&gt;**](PrivateLinkResource.md) | Private link resources associated with the cluster. | [optional] |
| **disable_local_accounts** | **Boolean** | If local accounts should be disabled on the Managed Cluster. If set to true, getting static credentials will be disabled for this cluster. This must only be used on Managed Clusters that are AAD enabled. For more details see [disable local accounts](https://docs.microsoft.com/azure/aks/managed-aad#disable-local-accounts-preview). | [optional] |
| **http_proxy_config** | [**ManagedClusterHTTPProxyConfig**](ManagedClusterHTTPProxyConfig.md) |  | [optional] |
| **security_profile** | [**ManagedClusterSecurityProfile**](ManagedClusterSecurityProfile.md) |  | [optional] |
| **storage_profile** | [**ManagedClusterStorageProfile**](ManagedClusterStorageProfile.md) |  | [optional] |
| **ingress_profile** | [**ManagedClusterIngressProfile**](ManagedClusterIngressProfile.md) |  | [optional] |
| **public_network_access** | [**PublicNetworkAccess**](PublicNetworkAccess.md) |  | [optional] |
| **workload_auto_scaler_profile** | [**ManagedClusterWorkloadAutoScalerProfile**](ManagedClusterWorkloadAutoScalerProfile.md) |  | [optional] |
| **azure_monitor_profile** | [**ManagedClusterAzureMonitorProfile**](ManagedClusterAzureMonitorProfile.md) |  | [optional] |
| **service_mesh_profile** | [**ServiceMeshProfile**](ServiceMeshProfile.md) |  | [optional] |
| **resource_uid** | **String** | The resourceUID uniquely identifies ManagedClusters that reuse ARM ResourceIds (i.e: create, delete, create sequence) | [optional][readonly] |
| **metrics_profile** | [**ManagedClusterMetricsProfile**](ManagedClusterMetricsProfile.md) |  | [optional] |
| **node_provisioning_profile** | [**ManagedClusterNodeProvisioningProfile**](ManagedClusterNodeProvisioningProfile.md) |  | [optional] |
| **bootstrap_profile** | [**ManagedClusterBootstrapProfile**](ManagedClusterBootstrapProfile.md) |  | [optional] |
| **ai_toolchain_operator_profile** | [**ManagedClusterAIToolchainOperatorProfile**](ManagedClusterAIToolchainOperatorProfile.md) |  | [optional] |
| **scheduler_profile** | [**SchedulerProfile**](SchedulerProfile.md) |  | [optional] |
| **hosted_system_profile** | [**ManagedClusterHostedSystemProfile**](ManagedClusterHostedSystemProfile.md) |  | [optional] |
| **status** | [**ManagedClusterStatus**](ManagedClusterStatus.md) |  | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::ManagedClusterProperties.new(
  provisioning_state: null,
  power_state: null,
  max_agent_pools: null,
  kubernetes_version: null,
  current_kubernetes_version: null,
  dns_prefix: null,
  fqdn_subdomain: null,
  fqdn: null,
  private_fqdn: null,
  azure_portal_fqdn: null,
  agent_pool_profiles: null,
  linux_profile: null,
  windows_profile: null,
  service_principal_profile: null,
  addon_profiles: null,
  pod_identity_profile: null,
  oidc_issuer_profile: null,
  node_resource_group: null,
  node_resource_group_profile: null,
  enable_rbac: null,
  support_plan: null,
  enable_fips: null,
  network_profile: null,
  aad_profile: null,
  auto_upgrade_profile: null,
  upgrade_settings: null,
  auto_scaler_profile: null,
  api_server_access_profile: null,
  disk_encryption_set_id: null,
  identity_profile: null,
  private_link_resources: null,
  disable_local_accounts: null,
  http_proxy_config: null,
  security_profile: null,
  storage_profile: null,
  ingress_profile: null,
  public_network_access: null,
  workload_auto_scaler_profile: null,
  azure_monitor_profile: null,
  service_mesh_profile: null,
  resource_uid: null,
  metrics_profile: null,
  node_provisioning_profile: null,
  bootstrap_profile: null,
  ai_toolchain_operator_profile: null,
  scheduler_profile: null,
  hosted_system_profile: null,
  status: null
)
```

