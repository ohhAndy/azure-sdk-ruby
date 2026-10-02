# AzureSDK::FileShareProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **last_modified_time** | **Time** | Returns the date and time the share was last modified. | [optional][readonly] |
| **metadata** | **Hash&lt;String, String&gt;** | A name-value pair to associate with the share as metadata. | [optional] |
| **share_quota** | **Integer** | The provisioned size of the share, in gibibytes. Must be greater than 0, and less than or equal to 5TB (5120). For Large File Shares, the maximum size is 102400. For file shares created under Files Provisioned v2 account type, please refer to the GetFileServiceUsage API response for the minimum and maximum allowed provisioned storage size. | [optional] |
| **provisioned_iops** | **Integer** | The provisioned IOPS of the share. This property is only for file shares created under Files Provisioned v2 account type. Please refer to the GetFileServiceUsage API response for the minimum and maximum allowed value for provisioned IOPS. | [optional] |
| **provisioned_bandwidth_mibps** | **Integer** | The provisioned bandwidth of the share, in mebibytes per second. This property is only for file shares created under Files Provisioned v2 account type. Please refer to the GetFileServiceUsage API response for the minimum and maximum allowed value for provisioned bandwidth. | [optional] |
| **included_burst_iops** | **Integer** | The calculated burst IOPS of the share. This property is only for file shares created under Files Provisioned v2 account type. | [optional][readonly] |
| **max_burst_credits_for_iops** | **Integer** | The calculated maximum burst credits for the share. This property is only for file shares created under Files Provisioned v2 account type. | [optional][readonly] |
| **next_allowed_quota_downgrade_time** | **String** | Returns the next allowed provisioned storage size downgrade time for the share. This property is only for file shares created under Files Provisioned v1 SSD and Files Provisioned v2 account type | [optional][readonly] |
| **next_allowed_provisioned_iops_downgrade_time** | **String** | Returns the next allowed provisioned IOPS downgrade time for the share. This property is only for file shares created under Files Provisioned v2 account type. | [optional][readonly] |
| **next_allowed_provisioned_bandwidth_downgrade_time** | **String** | Returns the next allowed provisioned bandwidth downgrade time for the share. This property is only for file shares created under Files Provisioned v2 account type. | [optional][readonly] |
| **enabled_protocols** | [**EnabledProtocols**](EnabledProtocols.md) |  | [optional] |
| **root_squash** | [**RootSquashType**](RootSquashType.md) |  | [optional] |
| **version** | **String** | The version of the share. | [optional][readonly] |
| **deleted** | **Boolean** | Indicates whether the share was deleted. | [optional][readonly] |
| **deleted_time** | **Time** | The deleted time if the share was deleted. | [optional][readonly] |
| **remaining_retention_days** | **Integer** | Remaining retention days for share that was soft deleted. | [optional][readonly] |
| **access_tier** | [**ShareAccessTier**](ShareAccessTier.md) |  | [optional] |
| **access_tier_change_time** | **Time** | Indicates the last modification time for share access tier. | [optional][readonly] |
| **access_tier_status** | **String** | Indicates if there is a pending transition for access tier. | [optional][readonly] |
| **share_usage_bytes** | **Integer** | The approximate size of the data stored on the share. Note that this value may not include all recently created or recently resized files. | [optional][readonly] |
| **lease_status** | [**LeaseStatus**](LeaseStatus.md) |  | [optional] |
| **lease_state** | [**LeaseState**](LeaseState.md) |  | [optional] |
| **lease_duration** | [**LeaseDuration**](LeaseDuration.md) |  | [optional] |
| **signed_identifiers** | [**Array&lt;SignedIdentifier&gt;**](SignedIdentifier.md) | List of stored access policies specified on the share. | [optional] |
| **snapshot_time** | **Time** | Creation time of share snapshot returned in the response of list shares with expand param \&quot;snapshots\&quot;. | [optional][readonly] |
| **file_share_paid_bursting** | [**FileSharePropertiesFileSharePaidBursting**](FileSharePropertiesFileSharePaidBursting.md) |  | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::FileShareProperties.new(
  last_modified_time: null,
  metadata: null,
  share_quota: null,
  provisioned_iops: null,
  provisioned_bandwidth_mibps: null,
  included_burst_iops: null,
  max_burst_credits_for_iops: null,
  next_allowed_quota_downgrade_time: null,
  next_allowed_provisioned_iops_downgrade_time: null,
  next_allowed_provisioned_bandwidth_downgrade_time: null,
  enabled_protocols: null,
  root_squash: null,
  version: null,
  deleted: null,
  deleted_time: null,
  remaining_retention_days: null,
  access_tier: null,
  access_tier_change_time: null,
  access_tier_status: null,
  share_usage_bytes: null,
  lease_status: null,
  lease_state: null,
  lease_duration: null,
  signed_identifiers: null,
  snapshot_time: null,
  file_share_paid_bursting: null
)
```

