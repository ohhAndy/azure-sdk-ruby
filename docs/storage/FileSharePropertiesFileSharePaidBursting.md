# AzureRest::FileSharePropertiesFileSharePaidBursting

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **paid_bursting_enabled** | **Boolean** | Indicates whether paid bursting is enabled for the share. This property is only for file shares created under Files Provisioned v1 SSD account type. | [optional] |
| **paid_bursting_max_iops** | **Integer** | The maximum paid bursting IOPS for the share. This property is only for file shares created under Files Provisioned v1 SSD account type. The maximum allowed value is 102400 which is the maximum allowed IOPS for a share. | [optional] |
| **paid_bursting_max_bandwidth_mibps** | **Integer** | The maximum paid bursting bandwidth for the share, in mebibytes per second. This property is only for file shares created under Files Provisioned v1 SSD account type. The maximum allowed value is 10340 which is the maximum allowed bandwidth for a share. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::FileSharePropertiesFileSharePaidBursting.new(
  paid_bursting_enabled: null,
  paid_bursting_max_iops: null,
  paid_bursting_max_bandwidth_mibps: null
)
```

