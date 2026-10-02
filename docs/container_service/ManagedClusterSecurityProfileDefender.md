# AzureSDK::ManagedClusterSecurityProfileDefender

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **log_analytics_workspace_resource_id** | **String** | Resource ID of the Log Analytics workspace to be associated with Microsoft Defender. When Microsoft Defender is enabled, this field is required and must be a valid workspace resource ID. When Microsoft Defender is disabled, leave the field empty. | [optional] |
| **security_monitoring** | [**ManagedClusterSecurityProfileDefenderSecurityMonitoring**](ManagedClusterSecurityProfileDefenderSecurityMonitoring.md) |  | [optional] |
| **security_gating** | [**ManagedClusterSecurityProfileDefenderSecurityGating**](ManagedClusterSecurityProfileDefenderSecurityGating.md) |  | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::ManagedClusterSecurityProfileDefender.new(
  log_analytics_workspace_resource_id: null,
  security_monitoring: null,
  security_gating: null
)
```

