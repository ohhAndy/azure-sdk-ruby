# AzureRest::ProximityPlacementGroupPropertiesIntent

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vm_sizes** | **Array&lt;String&gt;** | Specifies possible sizes of virtual machines that can be created in the proximity placement group. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::ProximityPlacementGroupPropertiesIntent.new(
  vm_sizes: null
)
```

