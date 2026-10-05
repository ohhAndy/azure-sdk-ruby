# AzureRest::VirtualMachineImageProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **plan** | [**PurchasePlan**](PurchasePlan.md) |  | [optional] |
| **os_disk_image** | [**OSDiskImage**](OSDiskImage.md) |  | [optional] |
| **data_disk_images** | [**Array&lt;DataDiskImage&gt;**](DataDiskImage.md) | The list of data disk images information. | [optional] |
| **automatic_os_upgrade_properties** | [**AutomaticOSUpgradeProperties**](AutomaticOSUpgradeProperties.md) |  | [optional] |
| **hyper_v_generation** | [**HyperVGenerationTypes**](HyperVGenerationTypes.md) |  | [optional] |
| **disallowed** | [**DisallowedConfiguration**](DisallowedConfiguration.md) |  | [optional] |
| **features** | [**Array&lt;VirtualMachineImageFeature&gt;**](VirtualMachineImageFeature.md) |  | [optional] |
| **architecture** | [**ArchitectureTypes**](ArchitectureTypes.md) |  | [optional] |
| **image_deprecation_status** | [**ImageDeprecationStatus**](ImageDeprecationStatus.md) |  | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::VirtualMachineImageProperties.new(
  plan: null,
  os_disk_image: null,
  data_disk_images: null,
  automatic_os_upgrade_properties: null,
  hyper_v_generation: null,
  disallowed: null,
  features: null,
  architecture: null,
  image_deprecation_status: null
)
```

