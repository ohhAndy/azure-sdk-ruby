# AzureRest::ZoneAllocationPolicy

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **max_zone_count** | **Integer** | The maximum number of availability zones to use if the ZonePlacementPolicy is &#39;Auto&#39;. If not specified, all availability zones will be used. | [optional] |
| **max_instance_percent_per_zone_policy** | [**MaxInstancePercentPerZonePolicy**](MaxInstancePercentPerZonePolicy.md) |  | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::ZoneAllocationPolicy.new(
  max_zone_count: null,
  max_instance_percent_per_zone_policy: null
)
```

