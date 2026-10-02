# AzureSDK::UpgradeOverrideSettings

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **force_upgrade** | **Boolean** | Whether to force upgrade the cluster. Note that this option instructs upgrade operation to bypass upgrade protections such as checking for deprecated API usage. Enable this option only with caution. | [optional] |
| **_until** | **Time** | Until when the overrides are effective. Note that this only matches the start time of an upgrade, and the effectiveness won&#39;t change once an upgrade starts even if the &#x60;until&#x60; expires as upgrade proceeds. This field is not set by default. It must be set for the overrides to take effect. | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::UpgradeOverrideSettings.new(
  force_upgrade: null,
  _until: null
)
```

