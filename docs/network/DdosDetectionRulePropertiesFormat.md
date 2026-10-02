# AzureSDK::DdosDetectionRulePropertiesFormat

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **provisioning_state** | [**ProvisioningState**](ProvisioningState.md) |  | [optional] |
| **detection_mode** | [**DdosDetectionMode**](DdosDetectionMode.md) |  | [optional] |
| **traffic_detection_rule** | [**TrafficDetectionRule**](TrafficDetectionRule.md) |  | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::DdosDetectionRulePropertiesFormat.new(
  provisioning_state: null,
  detection_mode: null,
  traffic_detection_rule: null
)
```

