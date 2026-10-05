# AzureRest::ManagedClusterAzureMonitorProfileAppMonitoringOpenTelemetryLogsAndTraces

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **enabled** | **Boolean** | Indicates if Application Monitoring OpenTelemetry Logs and traces is enabled or not. | [optional] |
| **http_port** | **Integer** | The host port for OpenTelemetry HTTP/PROTOBUF logs and traces. If not specified, the default port is 28331. | [optional] |
| **grpc_port** | **Integer** | The host port for OpenTelemetry GRPC logs and traces. If not specified, the default port is 28332. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::ManagedClusterAzureMonitorProfileAppMonitoringOpenTelemetryLogsAndTraces.new(
  enabled: null,
  http_port: null,
  grpc_port: null
)
```

