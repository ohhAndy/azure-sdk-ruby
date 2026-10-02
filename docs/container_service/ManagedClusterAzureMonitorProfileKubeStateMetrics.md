# AzureSDK::ManagedClusterAzureMonitorProfileKubeStateMetrics

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **metric_labels_allowlist** | **String** | Comma-separated list of additional Kubernetes label keys that will be used in the resource&#39;s labels metric (Example: &#39;namespaces&#x3D;[k8s-label-1,k8s-label-n,...],pods&#x3D;[app],...&#39;). By default the metric contains only resource name and namespace labels. | [optional] |
| **metric_annotations_allow_list** | **String** | Comma-separated list of Kubernetes annotation keys that will be used in the resource&#39;s labels metric (Example: &#39;namespaces&#x3D;[kubernetes.io/team,...],pods&#x3D;[kubernetes.io/team],...&#39;). By default the metric contains only resource name and namespace labels. | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::ManagedClusterAzureMonitorProfileKubeStateMetrics.new(
  metric_labels_allowlist: null,
  metric_annotations_allow_list: null
)
```

