# AzureRest::KubeletConfig

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cpu_manager_policy** | **String** | The CPU Manager policy to use. The default is &#39;none&#39;. See [Kubernetes CPU management policies](https://kubernetes.io/docs/tasks/administer-cluster/cpu-management-policies/#cpu-management-policies) for more information. Allowed values are &#39;none&#39; and &#39;static&#39;. | [optional] |
| **cpu_cfs_quota** | **Boolean** | If CPU CFS quota enforcement is enabled for containers that specify CPU limits. The default is true. | [optional] |
| **cpu_cfs_quota_period** | **String** | The CPU CFS quota period value. The default is &#39;100ms.&#39; Valid values are a sequence of decimal numbers with an optional fraction and a unit suffix. For example: &#39;300ms&#39;, &#39;2h45m&#39;. Supported units are &#39;ns&#39;, &#39;us&#39;, &#39;ms&#39;, &#39;s&#39;, &#39;m&#39;, and &#39;h&#39;. | [optional] |
| **image_gc_high_threshold** | **Integer** | The percent of disk usage after which image garbage collection is always run. To disable image garbage collection, set to 100. The default is 85% | [optional] |
| **image_gc_low_threshold** | **Integer** | The percent of disk usage before which image garbage collection is never run. This cannot be set higher than imageGcHighThreshold. The default is 80% | [optional] |
| **topology_manager_policy** | **String** | The Topology Manager policy to use. For more information see [Kubernetes Topology Manager](https://kubernetes.io/docs/tasks/administer-cluster/topology-manager). The default is &#39;none&#39;. Allowed values are &#39;none&#39;, &#39;best-effort&#39;, &#39;restricted&#39;, and &#39;single-numa-node&#39;. | [optional] |
| **allowed_unsafe_sysctls** | **Array&lt;String&gt;** | Allowed list of unsafe sysctls or unsafe sysctl patterns (ending in &#x60;*&#x60;). | [optional] |
| **fail_swap_on** | **Boolean** | If set to true it will make the Kubelet fail to start if swap is enabled on the node. | [optional] |
| **container_log_max_size_mb** | **Integer** | The maximum size (e.g. 10Mi) of container log file before it is rotated. | [optional] |
| **container_log_max_files** | **Integer** | The maximum number of container log files that can be present for a container. The number must be ≥ 2. | [optional] |
| **pod_max_pids** | **Integer** | The maximum number of processes per pod. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::KubeletConfig.new(
  cpu_manager_policy: null,
  cpu_cfs_quota: null,
  cpu_cfs_quota_period: null,
  image_gc_high_threshold: null,
  image_gc_low_threshold: null,
  topology_manager_policy: null,
  allowed_unsafe_sysctls: null,
  fail_swap_on: null,
  container_log_max_size_mb: null,
  container_log_max_files: null,
  pod_max_pids: null
)
```

