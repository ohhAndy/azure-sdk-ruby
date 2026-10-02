# AzureSDK::ImageProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **source_virtual_machine** | [**SubResource**](SubResource.md) |  | [optional] |
| **storage_profile** | [**ImageStorageProfile**](ImageStorageProfile.md) |  | [optional] |
| **provisioning_state** | **String** | The provisioning state. | [optional][readonly] |
| **hyper_v_generation** | [**HyperVGenerationTypes**](HyperVGenerationTypes.md) |  | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::ImageProperties.new(
  source_virtual_machine: null,
  storage_profile: null,
  provisioning_state: null,
  hyper_v_generation: null
)
```

