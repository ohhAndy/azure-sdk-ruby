# AzureRest::NetworkVirtualApplianceSkuPropertiesFormat

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vendor** | **String** | Network Virtual Appliance Sku vendor. | [optional][readonly] |
| **available_versions** | **Array&lt;String&gt;** | Available Network Virtual Appliance versions. | [optional][readonly] |
| **available_scale_units** | [**Array&lt;NetworkVirtualApplianceSkuInstances&gt;**](NetworkVirtualApplianceSkuInstances.md) | The list of scale units available. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::NetworkVirtualApplianceSkuPropertiesFormat.new(
  vendor: null,
  available_versions: null,
  available_scale_units: null
)
```

