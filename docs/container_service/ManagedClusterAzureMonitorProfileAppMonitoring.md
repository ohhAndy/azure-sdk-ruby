# AzureRest::ManagedClusterAzureMonitorProfileAppMonitoring

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **auto_instrumentation** | [**ManagedClusterAzureMonitorProfileAppMonitoringAutoInstrumentation**](ManagedClusterAzureMonitorProfileAppMonitoringAutoInstrumentation.md) |  | [optional] |
| **open_telemetry_metrics** | [**ManagedClusterAzureMonitorProfileAppMonitoringOpenTelemetryMetrics**](ManagedClusterAzureMonitorProfileAppMonitoringOpenTelemetryMetrics.md) |  | [optional] |
| **open_telemetry_logs_and_traces** | [**ManagedClusterAzureMonitorProfileAppMonitoringOpenTelemetryLogsAndTraces**](ManagedClusterAzureMonitorProfileAppMonitoringOpenTelemetryLogsAndTraces.md) |  | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::ManagedClusterAzureMonitorProfileAppMonitoring.new(
  auto_instrumentation: null,
  open_telemetry_metrics: null,
  open_telemetry_logs_and_traces: null
)
```

