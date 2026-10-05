# AzureRest::DedicatedHostGroupPropertiesAdditionalCapabilities

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ultra_ssd_enabled** | **Boolean** | The flag that enables or disables a capability to have UltraSSD Enabled Virtual Machines on Dedicated Hosts of the Dedicated Host Group. For the Virtual Machines to be UltraSSD Enabled, UltraSSDEnabled flag for the resource needs to be set true as well. The value is defaulted to &#39;false&#39; when not provided. Please refer to https://docs.microsoft.com/en-us/azure/virtual-machines/disks-enable-ultra-ssd for more details on Ultra SSD feature. **Note:** The ultraSSDEnabled setting can only be enabled for Host Groups that are created as zonal. Minimum api-version: 2022-03-01. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::DedicatedHostGroupPropertiesAdditionalCapabilities.new(
  ultra_ssd_enabled: null
)
```

