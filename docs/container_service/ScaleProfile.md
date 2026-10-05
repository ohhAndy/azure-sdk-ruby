# AzureRest::ScaleProfile

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **manual** | [**Array&lt;ManualScaleProfile&gt;**](ManualScaleProfile.md) | Specifications on how to scale the VirtualMachines agent pool to a fixed size. | [optional] |
| **autoscale** | [**Array&lt;AutoScaleProfile&gt;**](AutoScaleProfile.md) | Specifications on how to auto-scale the VirtualMachines agent pool within a predefined size range. Each profile targets a specific VM SKU and is evaluated independently. Scaling decisions across profiles are governed by the cluster autoscaler expander, configurable via &#x60;ManagedCluster.properties.autoScalerProfile.expander&#x60;. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::ScaleProfile.new(
  manual: null,
  autoscale: null
)
```

