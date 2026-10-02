# AzureSDK::RestorePolicyProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **enabled** | **Boolean** | Blob restore is enabled if set to true. |  |
| **days** | **Integer** | how long this blob can be restored. It should be great than zero and less than DeleteRetentionPolicy.days. | [optional] |
| **last_enabled_time** | **Time** | Deprecated in favor of minRestoreTime property. | [optional][readonly] |
| **min_restore_time** | **Time** | Returns the minimum date and time that the restore can be started. | [optional][readonly] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::RestorePolicyProperties.new(
  enabled: null,
  days: null,
  last_enabled_time: null,
  min_restore_time: null
)
```

