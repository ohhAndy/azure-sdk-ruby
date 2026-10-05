# AzureRest::VirtualApplianceSkuProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vendor** | **String** | Virtual Appliance Vendor. | [optional] |
| **bundled_scale_unit** | **String** | Virtual Appliance Scale Unit. | [optional] |
| **market_place_version** | **String** | Virtual Appliance Version. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::VirtualApplianceSkuProperties.new(
  vendor: null,
  bundled_scale_unit: null,
  market_place_version: null
)
```

