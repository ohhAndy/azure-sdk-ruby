# AzureSDK::ProbePropertiesFormat

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **load_balancing_rules** | [**Array&lt;SubResource&gt;**](SubResource.md) | The load balancer rules that use this probe. | [optional][readonly] |
| **protocol** | [**ProbeProtocol**](ProbeProtocol.md) |  |  |
| **port** | **Integer** | The port for communicating the probe. Possible values range from 1 to 65535, inclusive. |  |
| **interval_in_seconds** | **Integer** | The interval, in seconds, for how frequently to probe the endpoint for health status. Typically, the interval is slightly less than half the allocated timeout period (in seconds) which allows two full probes before taking the instance out of rotation. The default value is 15, the minimum value is 5. | [optional] |
| **no_healthy_backends_behavior** | [**ProbeNoHealthyBackendsBehavior**](ProbeNoHealthyBackendsBehavior.md) |  | [optional] |
| **number_of_probes** | **Integer** | The number of probes where if no response, will result in stopping further traffic from being delivered to the endpoint. This values allows endpoints to be taken out of rotation faster or slower than the typical times used in Azure. | [optional] |
| **probe_threshold** | **Integer** | The number of consecutive successful or failed probes in order to allow or deny traffic from being delivered to this endpoint. After failing the number of consecutive probes equal to this value, the endpoint will be taken out of rotation and require the same number of successful consecutive probes to be placed back in rotation. | [optional] |
| **request_path** | **String** | The URI used for requesting health status from the VM. Path is required if a protocol is set to http. Otherwise, it is not allowed. There is no default value. | [optional] |
| **provisioning_state** | [**ProvisioningState**](ProvisioningState.md) |  | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::ProbePropertiesFormat.new(
  load_balancing_rules: null,
  protocol: null,
  port: null,
  interval_in_seconds: null,
  no_healthy_backends_behavior: null,
  number_of_probes: null,
  probe_threshold: null,
  request_path: null,
  provisioning_state: null
)
```

