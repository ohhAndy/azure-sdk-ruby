# AzureSDK::ManagedClusterAzureMonitorProfileContainerInsights

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **enabled** | **Boolean** | Indicates if Azure Monitor Container Insights Logs Addon is enabled or not. | [optional] |
| **log_analytics_workspace_resource_id** | **String** | Fully Qualified ARM Resource Id of Azure Log Analytics Workspace for storing Azure Monitor Container Insights Logs. | [optional] |
| **syslog_port** | **Integer** | The syslog host port. If not specified, the default port is 28330. | [optional] |
| **disable_prometheus_metrics_scraping** | **Boolean** | Indicates whether prometheus metrics scraping is disabled or not. If not specified the default is false i.e. the prometheus scraping is enabled. | [optional] |
| **container_network_logs** | [**ContainerNetworkLogs**](ContainerNetworkLogs.md) |  | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::ManagedClusterAzureMonitorProfileContainerInsights.new(
  enabled: null,
  log_analytics_workspace_resource_id: null,
  syslog_port: null,
  disable_prometheus_metrics_scraping: null,
  container_network_logs: null
)
```

