# AzureSDK::AdvancedThreatProtectionSettingsList

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | [**Array&lt;AdvancedThreatProtectionSettingsModel&gt;**](AdvancedThreatProtectionSettingsModel.md) | The AdvancedThreatProtectionSettingsModel items on this page | [readonly] |
| **next_link** | **String** | The link to the next page of items | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::AdvancedThreatProtectionSettingsList.new(
  value: null,
  next_link: null
)
```

