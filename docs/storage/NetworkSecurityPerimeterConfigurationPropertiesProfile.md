# AzureSDK::NetworkSecurityPerimeterConfigurationPropertiesProfile

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of the resource | [optional] |
| **access_rules_version** | **Float** | Current access rules version | [optional] |
| **access_rules** | [**Array&lt;NspAccessRule&gt;**](NspAccessRule.md) | List of Access Rules | [optional] |
| **diagnostic_settings_version** | **Float** | Diagnostic settings version | [optional] |
| **enabled_log_categories** | **Array&lt;String&gt;** | Enabled logging categories | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::NetworkSecurityPerimeterConfigurationPropertiesProfile.new(
  name: null,
  access_rules_version: null,
  access_rules: null,
  diagnostic_settings_version: null,
  enabled_log_categories: null
)
```

