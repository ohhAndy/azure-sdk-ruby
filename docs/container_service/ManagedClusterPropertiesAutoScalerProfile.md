# AzureSDK::ManagedClusterPropertiesAutoScalerProfile

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **balance_similar_node_groups** | **String** | Detects similar node pools and balances the number of nodes between them. Valid values are &#39;true&#39; and &#39;false&#39; | [optional] |
| **daemonset_eviction_for_empty_nodes** | **Boolean** | DaemonSet pods will be gracefully terminated from empty nodes. If set to true, all daemonset pods on empty nodes will be evicted before deletion of the node. If the daemonset pod cannot be evicted another node will be chosen for scaling. If set to false, the node will be deleted without ensuring that daemonset pods are deleted or evicted. | [optional] |
| **daemonset_eviction_for_occupied_nodes** | **Boolean** | DaemonSet pods will be gracefully terminated from non-empty nodes. If set to true, all daemonset pods on occupied nodes will be evicted before deletion of the node. If the daemonset pod cannot be evicted another node will be chosen for scaling. If set to false, the node will be deleted without ensuring that daemonset pods are deleted or evicted. | [optional] |
| **ignore_daemonsets_utilization** | **Boolean** | Should CA ignore DaemonSet pods when calculating resource utilization for scaling down. If set to true, the resources used by daemonset will be taken into account when making scaling down decisions. | [optional] |
| **expander** | [**Expander**](Expander.md) |  | [optional] |
| **max_empty_bulk_delete** | **String** | The maximum number of empty nodes that can be deleted at the same time. This must be a positive integer. The default is 10. | [optional] |
| **max_graceful_termination_sec** | **String** | The maximum number of seconds the cluster autoscaler waits for pod termination when trying to scale down a node. The default is 600. | [optional] |
| **max_node_provision_time** | **String** | The maximum time the autoscaler waits for a node to be provisioned. The default is &#39;15m&#39;. Values must be an integer followed by an &#39;m&#39;. No unit of time other than minutes (m) is supported. | [optional] |
| **max_total_unready_percentage** | **String** | The maximum percentage of unready nodes in the cluster. After this percentage is exceeded, cluster autoscaler halts operations. The default is 45. The maximum is 100 and the minimum is 0. | [optional] |
| **new_pod_scale_up_delay** | **String** | Ignore unscheduled pods before they&#39;re a certain age. For scenarios like burst/batch scale where you don&#39;t want CA to act before the kubernetes scheduler could schedule all the pods, you can tell CA to ignore unscheduled pods before they&#39;re a certain age. The default is &#39;0s&#39;. Values must be an integer followed by a unit (&#39;s&#39; for seconds, &#39;m&#39; for minutes, &#39;h&#39; for hours, etc). | [optional] |
| **ok_total_unready_count** | **String** | The number of allowed unready nodes, irrespective of max-total-unready-percentage. This must be an integer. The default is 3. | [optional] |
| **scan_interval** | **String** | How often cluster is reevaluated for scale up or down. The default is &#39;10&#39;. Values must be an integer number of seconds. | [optional] |
| **scale_down_delay_after_add** | **String** | How long after scale up that scale down evaluation resumes. The default is &#39;10m&#39;. Values must be an integer followed by an &#39;m&#39;. No unit of time other than minutes (m) is supported. | [optional] |
| **scale_down_delay_after_delete** | **String** | How long after node deletion that scale down evaluation resumes. The default is the scan-interval. Values must be an integer followed by an &#39;m&#39;. No unit of time other than minutes (m) is supported. | [optional] |
| **scale_down_delay_after_failure** | **String** | How long after scale down failure that scale down evaluation resumes. The default is &#39;3m&#39;. Values must be an integer followed by an &#39;m&#39;. No unit of time other than minutes (m) is supported. | [optional] |
| **scale_down_unneeded_time** | **String** | How long a node should be unneeded before it is eligible for scale down. The default is &#39;10m&#39;. Values must be an integer followed by an &#39;m&#39;. No unit of time other than minutes (m) is supported. | [optional] |
| **scale_down_unready_time** | **String** | How long an unready node should be unneeded before it is eligible for scale down. The default is &#39;20m&#39;. Values must be an integer followed by an &#39;m&#39;. No unit of time other than minutes (m) is supported. | [optional] |
| **scale_down_utilization_threshold** | **String** | Node utilization level, defined as sum of requested resources divided by capacity, below which a node can be considered for scale down. The default is &#39;0.5&#39;. | [optional] |
| **skip_nodes_with_local_storage** | **String** | If cluster autoscaler will skip deleting nodes with pods with local storage, for example, EmptyDir or HostPath. The default is true. | [optional] |
| **skip_nodes_with_system_pods** | **String** | If cluster autoscaler will skip deleting nodes with pods from kube-system (except for DaemonSet or mirror pods). The default is true. | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::ManagedClusterPropertiesAutoScalerProfile.new(
  balance_similar_node_groups: null,
  daemonset_eviction_for_empty_nodes: null,
  daemonset_eviction_for_occupied_nodes: null,
  ignore_daemonsets_utilization: null,
  expander: null,
  max_empty_bulk_delete: null,
  max_graceful_termination_sec: null,
  max_node_provision_time: null,
  max_total_unready_percentage: null,
  new_pod_scale_up_delay: null,
  ok_total_unready_count: null,
  scan_interval: null,
  scale_down_delay_after_add: null,
  scale_down_delay_after_delete: null,
  scale_down_delay_after_failure: null,
  scale_down_unneeded_time: null,
  scale_down_unready_time: null,
  scale_down_utilization_threshold: null,
  skip_nodes_with_local_storage: null,
  skip_nodes_with_system_pods: null
)
```

