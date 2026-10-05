# AzureRest::ScheduledQueryRuleProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **created_with_api_version** | **String** | The api-version used when creating this alert rule | [optional][readonly] |
| **is_legacy_log_analytics_rule** | **Boolean** | True if alert rule is legacy Log Analytic rule | [optional][readonly] |
| **description** | **String** | The description of the scheduled query rule. | [optional] |
| **display_name** | **String** | The display name of the alert rule | [optional] |
| **severity** | **Integer** | Severity of the alert. Should be an integer between [0-4]. Value of 0 is severest. Relevant and required only for rules of the kind LogAlert. | [optional] |
| **enabled** | **Boolean** | The flag which indicates whether this scheduled query rule is enabled. Value should be true or false | [optional] |
| **scopes** | **Array&lt;String&gt;** | The list of resource id&#39;s that this scheduled query rule is scoped to. | [optional] |
| **evaluation_frequency** | **String** | How often the scheduled query rule is evaluated represented in ISO 8601 duration format. Relevant and required only for rules of the kind LogAlert. | [optional] |
| **window_size** | **String** | The period of time (in ISO 8601 duration format) on which the Alert query will be executed (bin size). Relevant and required only for rules of the kind LogAlert. | [optional] |
| **override_query_time_range** | **String** | If specified then overrides the query time range (default is WindowSize*NumberOfEvaluationPeriods). Relevant only for rules of the kind LogAlert. | [optional] |
| **target_resource_types** | **Array&lt;String&gt;** | List of resource type of the target resource(s) on which the alert is created/updated. For example if the scope is a resource group and targetResourceTypes is Microsoft.Compute/virtualMachines, then a different alert will be fired for each virtual machine in the resource group which meet the alert criteria. Relevant only for rules of the kind LogAlert | [optional] |
| **criteria** | [**ScheduledQueryRuleCriteria**](ScheduledQueryRuleCriteria.md) |  | [optional] |
| **mute_actions_duration** | **String** | Mute actions for the chosen period of time (in ISO 8601 duration format) after the alert is fired. Relevant only for rules of the kind LogAlert. | [optional] |
| **actions** | [**Actions**](Actions.md) |  | [optional] |
| **is_workspace_alerts_storage_configured** | **Boolean** | The flag which indicates whether this scheduled query rule has been configured to be stored in the customer&#39;s storage. The default is false. | [optional][readonly] |
| **check_workspace_alerts_storage_configured** | **Boolean** | The flag which indicates whether this scheduled query rule should be stored in the customer&#39;s storage. The default is false. Relevant only for rules of the kind LogAlert. | [optional] |
| **skip_query_validation** | **Boolean** | The flag which indicates whether the provided query should be validated or not. The default is false. Relevant only for rules of the kind LogAlert. | [optional] |
| **auto_mitigate** | **Boolean** | The flag that indicates whether the alert should be automatically resolved or not. The default is true. Relevant only for rules of kinds LogAlert and SimpleLogAlert. | [optional] |
| **resolve_configuration** | [**RuleResolveConfiguration**](RuleResolveConfiguration.md) |  | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::ScheduledQueryRuleProperties.new(
  created_with_api_version: null,
  is_legacy_log_analytics_rule: null,
  description: null,
  display_name: null,
  severity: null,
  enabled: null,
  scopes: null,
  evaluation_frequency: null,
  window_size: null,
  override_query_time_range: null,
  target_resource_types: null,
  criteria: null,
  mute_actions_duration: null,
  actions: null,
  is_workspace_alerts_storage_configured: null,
  check_workspace_alerts_storage_configured: null,
  skip_query_validation: null,
  auto_mitigate: null,
  resolve_configuration: null
)
```

