# AzureSDK::DdosSettings

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **protection_mode** | [**DdosSettingsProtectionMode**](DdosSettingsProtectionMode.md) |  | [optional] |
| **ddos_custom_policy** | [**SubResource**](SubResource.md) |  | [optional] |
| **ddos_protection_plan** | [**SubResource**](SubResource.md) |  | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::DdosSettings.new(
  protection_mode: null,
  ddos_custom_policy: null,
  ddos_protection_plan: null
)
```

