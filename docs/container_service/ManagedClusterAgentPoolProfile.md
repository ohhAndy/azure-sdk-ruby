# AzureSDK::ManagedClusterAgentPoolProfile

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **e_tag** | **String** | Unique read-only string used to implement optimistic concurrency. The eTag value will change when the resource is updated. Specify an if-match or if-none-match header with the eTag value for a subsequent request to enable optimistic concurrency per the normal eTag convention. | [optional][readonly] |
| **count** | **Integer** | Number of agents (VMs) to host docker containers. Allowed values must be in the range of 0 to 1000 (inclusive) for user pools and in the range of 1 to 1000 (inclusive) for system pools. The default value is 1. | [optional] |
| **vm_size** | **String** | The size of the agent pool VMs. VM size availability varies by region. If a node contains insufficient compute resources (memory, cpu, etc) pods might fail to run correctly. For more details on restricted VM sizes, see: https://docs.microsoft.com/azure/aks/quotas-skus-regions | [optional] |
| **os_disk_size_gb** | **Integer** | OS Disk Size in GB to be used to specify the disk size for every machine in the master/agent pool. If you specify 0, it will apply the default osDisk size according to the vmSize specified. | [optional] |
| **os_disk_type** | [**OSDiskType**](OSDiskType.md) |  | [optional] |
| **kubelet_disk_type** | [**KubeletDiskType**](KubeletDiskType.md) |  | [optional] |
| **workload_runtime** | [**WorkloadRuntime**](WorkloadRuntime.md) |  | [optional] |
| **message_of_the_day** | **String** | Message of the day for Linux nodes, base64-encoded. A base64-encoded string which will be written to /etc/motd after decoding. This allows customization of the message of the day for Linux nodes. It must not be specified for Windows nodes. It must be a static string (i.e., will be printed raw and not be executed as a script). | [optional] |
| **vnet_subnet_id** | **String** | The ID of the subnet which agent pool nodes and optionally pods will join on startup. If this is not specified, a VNET and subnet will be generated and used. If no podSubnetID is specified, this applies to nodes and pods, otherwise it applies to just nodes. This is of the form: /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/virtualNetworks/{virtualNetworkName}/subnets/{subnetName} | [optional] |
| **pod_subnet_id** | **String** | The ID of the subnet which pods will join when launched. If omitted, pod IPs are statically assigned on the node subnet (see vnetSubnetID for more details). This is of the form: /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/virtualNetworks/{virtualNetworkName}/subnets/{subnetName} | [optional] |
| **pod_ip_allocation_mode** | [**PodIPAllocationMode**](PodIPAllocationMode.md) |  | [optional] |
| **max_pods** | **Integer** | The maximum number of pods that can run on a node. | [optional] |
| **os_type** | **String** | The operating system type. The default is Linux. | [optional][default to &#39;Linux&#39;] |
| **os_sku** | [**OSSKU**](OSSKU.md) |  | [optional] |
| **max_count** | **Integer** | The maximum number of nodes for auto-scaling | [optional] |
| **min_count** | **Integer** | The minimum number of nodes for auto-scaling | [optional] |
| **enable_auto_scaling** | **Boolean** | Whether to enable auto-scaler | [optional] |
| **scale_down_mode** | [**ScaleDownMode**](ScaleDownMode.md) |  | [optional] |
| **type** | [**AgentPoolType**](AgentPoolType.md) |  | [optional] |
| **mode** | [**AgentPoolMode**](AgentPoolMode.md) |  | [optional] |
| **orchestrator_version** | **String** | The version of Kubernetes specified by the user. Both patch version &lt;major.minor.patch&gt; (e.g. 1.20.13) and &lt;major.minor&gt; (e.g. 1.20) are supported. When &lt;major.minor&gt; is specified, the latest supported GA patch version is chosen automatically. Updating the cluster with the same &lt;major.minor&gt; once it has been created (e.g. 1.14.x -&gt; 1.14) will not trigger an upgrade, even if a newer patch version is available. As a best practice, you should upgrade all node pools in an AKS cluster to the same Kubernetes version. The node pool version must have the same major version as the control plane. The node pool minor version must be within two minor versions of the control plane version. The node pool version cannot be greater than the control plane version. For more information see [upgrading a node pool](https://docs.microsoft.com/azure/aks/use-multiple-node-pools#upgrade-a-node-pool). | [optional] |
| **current_orchestrator_version** | **String** | The version of Kubernetes the Agent Pool is running. If orchestratorVersion is a fully specified version &lt;major.minor.patch&gt;, this field will be exactly equal to it. If orchestratorVersion is &lt;major.minor&gt;, this field will contain the full &lt;major.minor.patch&gt; version being used. | [optional][readonly] |
| **node_image_version** | **String** | The version of the node image. Setting this value triggers an agentPool rollback. Only values from &#x60;recentlyUsedVersions&#x60; are allowed. | [optional] |
| **upgrade_settings** | [**AgentPoolUpgradeSettings**](AgentPoolUpgradeSettings.md) |  | [optional] |
| **provisioning_state** | **String** | The current deployment or provisioning state. | [optional][readonly] |
| **power_state** | [**PowerState**](PowerState.md) |  | [optional] |
| **availability_zones** | **Array&lt;String&gt;** | The list of Availability zones to use for nodes. This can only be specified if the AgentPoolType property is &#39;VirtualMachineScaleSets&#39;. | [optional] |
| **enable_node_public_ip** | **Boolean** | Whether each node is allocated its own public IP. Some scenarios may require nodes in a node pool to receive their own dedicated public IP addresses. A common scenario is for gaming workloads, where a console needs to make a direct connection to a cloud virtual machine to minimize hops. For more information see [assigning a public IP per node](https://docs.microsoft.com/azure/aks/use-multiple-node-pools#assign-a-public-ip-per-node-for-your-node-pools). The default is false. | [optional] |
| **node_public_ip_prefix_id** | **String** | The public IP prefix ID which VM nodes should use IPs from. This is of the form: /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/publicIPPrefixes/{publicIPPrefixName} | [optional] |
| **scale_set_priority** | **String** | The Virtual Machine Scale Set priority. | [optional][default to &#39;Regular&#39;] |
| **scale_set_eviction_policy** | **String** | The Virtual Machine Scale Set eviction policy. The eviction policy specifies what to do with the VM when it is evicted. The default is Delete. For more information about eviction see [spot VMs](https://docs.microsoft.com/azure/virtual-machines/spot-vms) | [optional][default to &#39;Delete&#39;] |
| **spot_max_price** | **Float** | The max price (in US Dollars) you are willing to pay for spot instances. Possible values are any decimal value greater than zero or -1 which indicates default price to be up-to on-demand. Possible values are any decimal value greater than zero or -1 which indicates the willingness to pay any on-demand price. For more details on spot pricing, see [spot VMs pricing](https://docs.microsoft.com/azure/virtual-machines/spot-vms#pricing) | [optional][default to -1.0] |
| **tags** | **Hash&lt;String, String&gt;** | The tags to be persisted on the agent pool virtual machine scale set. | [optional] |
| **node_labels** | **Hash&lt;String, String&gt;** | The node labels to be persisted across all nodes in agent pool. | [optional] |
| **node_taints** | **Array&lt;String&gt;** | The taints added to new nodes during node pool create and scale. For example, key&#x3D;value:NoSchedule. | [optional] |
| **proximity_placement_group_id** | **String** | The ID for Proximity Placement Group. | [optional] |
| **kubelet_config** | [**KubeletConfig**](KubeletConfig.md) |  | [optional] |
| **linux_os_config** | [**LinuxOSConfig**](LinuxOSConfig.md) |  | [optional] |
| **enable_encryption_at_host** | **Boolean** | Whether to enable host based OS and data drive encryption. This is only supported on certain VM sizes and in certain Azure regions. For more information, see: https://docs.microsoft.com/azure/aks/enable-host-encryption | [optional] |
| **enable_ultra_ssd** | **Boolean** | Whether to enable UltraSSD | [optional] |
| **enable_fips** | **Boolean** | Whether to use a FIPS-enabled OS. See [Add a FIPS-enabled node pool](https://docs.microsoft.com/azure/aks/use-multiple-node-pools#add-a-fips-enabled-node-pool-preview) for more details. | [optional] |
| **gpu_instance_profile** | [**GPUInstanceProfile**](GPUInstanceProfile.md) |  | [optional] |
| **creation_data** | [**CreationData**](CreationData.md) |  | [optional] |
| **capacity_reservation_group_id** | **String** | The fully qualified resource ID of the Capacity Reservation Group to provide virtual machines from a reserved group of Virtual Machines. This is of the form: &#39;/subscriptions/{subscriptionId}/resourcegroups/{resourceGroupName}/providers/Microsoft.Compute/capacityreservationgroups/{capacityReservationGroupName}&#39; Customers use it to create an agentpool with a specified CRG. For more information see [Capacity Reservation](https://learn.microsoft.com/en-us/azure/virtual-machines/capacity-reservation-overview) | [optional] |
| **host_group_id** | **String** | The fully qualified resource ID of the Dedicated Host Group to provision virtual machines from, used only in creation scenario and not allowed to changed once set. This is of the form: /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/hostGroups/{hostGroupName}. For more information see [Azure dedicated hosts](https://docs.microsoft.com/azure/virtual-machines/dedicated-hosts). | [optional] |
| **network_profile** | [**AgentPoolNetworkProfile**](AgentPoolNetworkProfile.md) |  | [optional] |
| **windows_profile** | [**AgentPoolWindowsProfile**](AgentPoolWindowsProfile.md) |  | [optional] |
| **security_profile** | [**AgentPoolSecurityProfile**](AgentPoolSecurityProfile.md) |  | [optional] |
| **gpu_profile** | [**GPUProfile**](GPUProfile.md) |  | [optional] |
| **gateway_profile** | [**AgentPoolGatewayProfile**](AgentPoolGatewayProfile.md) |  | [optional] |
| **artifact_streaming_profile** | [**AgentPoolArtifactStreamingProfile**](AgentPoolArtifactStreamingProfile.md) |  | [optional] |
| **virtual_machines_profile** | [**VirtualMachinesProfile**](VirtualMachinesProfile.md) |  | [optional] |
| **virtual_machine_nodes_status** | [**Array&lt;VirtualMachineNodes&gt;**](VirtualMachineNodes.md) | The status of nodes in a VirtualMachines agent pool. | [optional] |
| **status** | [**AgentPoolStatus**](AgentPoolStatus.md) |  | [optional] |
| **local_dns_profile** | [**LocalDNSProfile**](LocalDNSProfile.md) |  | [optional] |
| **name** | **String** | Unique name of the agent pool profile in the context of the subscription and resource group. Windows agent pool names must be 6 characters or less. |  |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::ManagedClusterAgentPoolProfile.new(
  e_tag: null,
  count: null,
  vm_size: null,
  os_disk_size_gb: null,
  os_disk_type: null,
  kubelet_disk_type: null,
  workload_runtime: null,
  message_of_the_day: null,
  vnet_subnet_id: null,
  pod_subnet_id: null,
  pod_ip_allocation_mode: null,
  max_pods: null,
  os_type: null,
  os_sku: null,
  max_count: null,
  min_count: null,
  enable_auto_scaling: null,
  scale_down_mode: null,
  type: null,
  mode: null,
  orchestrator_version: null,
  current_orchestrator_version: null,
  node_image_version: null,
  upgrade_settings: null,
  provisioning_state: null,
  power_state: null,
  availability_zones: null,
  enable_node_public_ip: null,
  node_public_ip_prefix_id: null,
  scale_set_priority: null,
  scale_set_eviction_policy: null,
  spot_max_price: null,
  tags: null,
  node_labels: null,
  node_taints: null,
  proximity_placement_group_id: null,
  kubelet_config: null,
  linux_os_config: null,
  enable_encryption_at_host: null,
  enable_ultra_ssd: null,
  enable_fips: null,
  gpu_instance_profile: null,
  creation_data: null,
  capacity_reservation_group_id: null,
  host_group_id: null,
  network_profile: null,
  windows_profile: null,
  security_profile: null,
  gpu_profile: null,
  gateway_profile: null,
  artifact_streaming_profile: null,
  virtual_machines_profile: null,
  virtual_machine_nodes_status: null,
  status: null,
  local_dns_profile: null,
  name: null
)
```

