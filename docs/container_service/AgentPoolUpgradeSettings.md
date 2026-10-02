# AzureSDK::AgentPoolUpgradeSettings

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **max_surge** | **String** | The maximum number or percentage of nodes that are surged during upgrade. This can either be set to an integer (e.g. &#39;5&#39;) or a percentage (e.g. &#39;50%&#39;). If a percentage is specified, it is the percentage of the total agent pool size at the time of the upgrade. For percentages, fractional nodes are rounded up. If not specified, the default is 10%. For more information, including best practices, see: https://learn.microsoft.com/en-us/azure/aks/upgrade-cluster | [optional] |
| **max_unavailable** | **String** | The maximum number or percentage of nodes that can be simultaneously unavailable during upgrade. This can either be set to an integer (e.g. &#39;1&#39;) or a percentage (e.g. &#39;5%&#39;). If a percentage is specified, it is the percentage of the total agent pool size at the time of the upgrade. For percentages, fractional nodes are rounded up. If not specified, the default is 0. For more information, including best practices, see: https://learn.microsoft.com/en-us/azure/aks/upgrade-cluster | [optional] |
| **drain_timeout_in_minutes** | **Integer** | The drain timeout for a node. The amount of time (in minutes) to wait on eviction of pods and graceful termination per node. This eviction wait time honors waiting on pod disruption budgets. If this time is exceeded, the upgrade fails. If not specified, the default is 30 minutes. | [optional] |
| **node_soak_duration_in_minutes** | **Integer** | The soak duration for a node. The amount of time (in minutes) to wait after draining a node and before reimaging it and moving on to next node. If not specified, the default is 0 minutes. | [optional] |
| **undrainable_node_behavior** | [**UndrainableNodeBehavior**](UndrainableNodeBehavior.md) |  | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::AgentPoolUpgradeSettings.new(
  max_surge: null,
  max_unavailable: null,
  drain_timeout_in_minutes: null,
  node_soak_duration_in_minutes: null,
  undrainable_node_behavior: null
)
```

