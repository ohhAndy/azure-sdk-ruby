# AzureSDK::Capability

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | [**CapabilityStatus**](CapabilityStatus.md) |  | [optional] |
| **reason** | **String** | Reason for the capability not being available. | [optional][readonly] |
| **name** | **String** | Name of flexible servers capabilities. | [optional] |
| **supported_server_editions** | [**Array&lt;ServerEditionCapability&gt;**](ServerEditionCapability.md) | List of supported compute tiers. | [optional][readonly] |
| **supported_server_versions** | [**Array&lt;ServerVersionCapability&gt;**](ServerVersionCapability.md) | List of supported major versions of PostgreSQL database engine. | [optional][readonly] |
| **supported_features** | [**Array&lt;SupportedFeature&gt;**](SupportedFeature.md) | Features supported. | [optional][readonly] |
| **fast_provisioning_supported** | [**FastProvisioningSupport**](FastProvisioningSupport.md) |  | [optional] |
| **supported_fast_provisioning_editions** | [**Array&lt;FastProvisioningEditionCapability&gt;**](FastProvisioningEditionCapability.md) | List of compute tiers supporting fast provisioning. | [optional][readonly] |
| **geo_backup_supported** | [**GeographicallyRedundantBackupSupport**](GeographicallyRedundantBackupSupport.md) |  | [optional] |
| **zone_redundant_ha_supported** | [**ZoneRedundantHighAvailabilitySupport**](ZoneRedundantHighAvailabilitySupport.md) |  | [optional] |
| **zone_redundant_ha_and_geo_backup_supported** | [**ZoneRedundantHighAvailabilityAndGeographicallyRedundantBackupSupport**](ZoneRedundantHighAvailabilityAndGeographicallyRedundantBackupSupport.md) |  | [optional] |
| **storage_auto_growth_supported** | [**StorageAutoGrowthSupport**](StorageAutoGrowthSupport.md) |  | [optional] |
| **online_resize_supported** | [**OnlineStorageResizeSupport**](OnlineStorageResizeSupport.md) |  | [optional] |
| **restricted** | [**LocationRestricted**](LocationRestricted.md) |  | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::Capability.new(
  status: null,
  reason: null,
  name: null,
  supported_server_editions: null,
  supported_server_versions: null,
  supported_features: null,
  fast_provisioning_supported: null,
  supported_fast_provisioning_editions: null,
  geo_backup_supported: null,
  zone_redundant_ha_supported: null,
  zone_redundant_ha_and_geo_backup_supported: null,
  storage_auto_growth_supported: null,
  online_resize_supported: null,
  restricted: null
)
```

