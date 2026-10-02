# AzureSDK::DeleteRetentionPolicy

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **enabled** | **Boolean** | Indicates whether DeleteRetentionPolicy is enabled. | [optional] |
| **days** | **Integer** | Indicates the number of days that the deleted item should be retained. The minimum specified value can be 1 and the maximum value can be 365. | [optional] |
| **allow_permanent_delete** | **Boolean** | This property when set to true allows deletion of the soft deleted blob versions and snapshots. This property cannot be used blob restore policy. This property only applies to blob service and does not apply to containers or file share. | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::DeleteRetentionPolicy.new(
  enabled: null,
  days: null,
  allow_permanent_delete: null
)
```

