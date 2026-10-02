# AzureSDK::CapabilityPropertiesV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **supported_geo_backup_regions** | **Array&lt;String&gt;** | supported geo backup regions | [optional][readonly] |
| **supported_flexible_server_editions** | [**Array&lt;ServerEditionCapabilityV2&gt;**](ServerEditionCapabilityV2.md) | A list of supported flexible server editions. | [optional][readonly] |
| **supported_server_versions** | [**Array&lt;ServerVersionCapabilityV2&gt;**](ServerVersionCapabilityV2.md) | A list of supported server versions. | [optional][readonly] |
| **supported_features** | [**Array&lt;FeatureProperty&gt;**](FeatureProperty.md) | A list of supported features. | [optional][readonly] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::CapabilityPropertiesV2.new(
  supported_geo_backup_regions: null,
  supported_flexible_server_editions: null,
  supported_server_versions: null,
  supported_features: null
)
```

