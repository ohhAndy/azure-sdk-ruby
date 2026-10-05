# AzureRest::SkuCapability

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | vCore name | [optional][readonly] |
| **v_cores** | **Integer** | supported vCores | [optional][readonly] |
| **supported_iops** | **Integer** | supported IOPS | [optional][readonly] |
| **supported_memory_per_v_core_mb** | **Integer** | supported memory per vCore in MB | [optional][readonly] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::SkuCapability.new(
  name: null,
  v_cores: null,
  supported_iops: null,
  supported_memory_per_v_core_mb: null
)
```

