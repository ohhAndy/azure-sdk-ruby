# AzureSDK::AdvancedPlatformMetricsRuleProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **rule_type** | [**AdvancedPlatformMetricsRuleType**](AdvancedPlatformMetricsRuleType.md) |  | [optional] |
| **enabled** | **Boolean** | A boolean flag which enables the advanced platform metrics rule. |  |
| **last_modified_time** | **Time** | Gets the last modification date and time of the advanced platform metrics rule in UTC. | [optional][readonly] |
| **metrics_to_emit** | [**Array&lt;MetricsEmitted&gt;**](MetricsEmitted.md) | The metrics requested by the caller. If omitted in a create or update request, the service enables all metrics supported by the selected rule type. | [optional] |
| **metrics_emitted** | [**Array&lt;MetricsEmitted&gt;**](MetricsEmitted.md) | The metrics emitted by the rule. Metrics are mapped according to the rule type from RuleTypeProperty. Rule type to metrics mapping: ContainerLevelCapacityMetrics &#x3D;&gt; {ContainerUsedSize, ContainerBlobCount}. | [optional][readonly] |
| **rule_config** | [**AdvancedPlatformMetricsRuleConfig**](AdvancedPlatformMetricsRuleConfig.md) |  |  |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::AdvancedPlatformMetricsRuleProperties.new(
  rule_type: null,
  enabled: null,
  last_modified_time: null,
  metrics_to_emit: null,
  metrics_emitted: null,
  rule_config: null
)
```

