# AzureSDK::ManagedClusterAzureMonitorProfileAppMonitoringOpenTelemetryMetrics

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **enabled** | **Boolean** | Indicates if Application Monitoring OpenTelemetry Metrics is enabled or not. | [optional] |
| **http_port** | **Integer** | The host port for OpenTelemetry HTTP/PROTOBUF metrics. If not specified, the default port is 28333. | [optional] |
| **grpc_port** | **Integer** | The host port for OpenTelemetry GRPC metrics. If not specified, the default port is 28334. | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::ManagedClusterAzureMonitorProfileAppMonitoringOpenTelemetryMetrics.new(
  enabled: null,
  http_port: null,
  grpc_port: null
)
```

