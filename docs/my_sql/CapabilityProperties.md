# AzureSDK::CapabilityProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **zone** | **String** | zone name | [optional][readonly] |
| **supported_ha_mode** | **Array&lt;String&gt;** | Supported high availability mode | [optional][readonly] |
| **supported_geo_backup_regions** | **Array&lt;String&gt;** | supported geo backup regions | [optional][readonly] |
| **supported_flexible_server_editions** | [**Array&lt;ServerEditionCapability&gt;**](ServerEditionCapability.md) | A list of supported flexible server editions. | [optional][readonly] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::CapabilityProperties.new(
  zone: null,
  supported_ha_mode: null,
  supported_geo_backup_regions: null,
  supported_flexible_server_editions: null
)
```

