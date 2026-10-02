# AzureSDK::SkuCapabilityV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | vCore name | [optional][readonly] |
| **v_cores** | **Integer** | supported vCores | [optional][readonly] |
| **supported_iops** | **Integer** | supported IOPS | [optional][readonly] |
| **supported_memory_per_v_core_mb** | **Integer** | supported memory per vCore in MB | [optional][readonly] |
| **supported_zones** | **Array&lt;String&gt;** | Supported zones | [optional][readonly] |
| **supported_ha_mode** | **Array&lt;String&gt;** | Supported high availability mode | [optional][readonly] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::SkuCapabilityV2.new(
  name: null,
  v_cores: null,
  supported_iops: null,
  supported_memory_per_v_core_mb: null,
  supported_zones: null,
  supported_ha_mode: null
)
```

