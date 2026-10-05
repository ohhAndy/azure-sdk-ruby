# AzureRest::ProximityPlacementGroupListResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | [**Array&lt;ProximityPlacementGroup&gt;**](ProximityPlacementGroup.md) | The list of proximity placement groups. |  |
| **next_link** | **String** | The URI to fetch the next page of proximity placement groups. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::ProximityPlacementGroupListResult.new(
  value: null,
  next_link: null
)
```

