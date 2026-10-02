# AzureSDK::AdvancedThreatProtectionSettingsProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **state** | [**ThreatProtectionState**](ThreatProtectionState.md) |  |  |
| **creation_time** | **Time** | Specifies the creation time (UTC) of the policy. | [optional][readonly] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::AdvancedThreatProtectionSettingsProperties.new(
  state: null,
  creation_time: null
)
```

