# AzureSDK::Placement

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **zone_placement_policy** | [**ZonePlacementPolicyType**](ZonePlacementPolicyType.md) |  | [optional] |
| **include_zones** | **Array&lt;String&gt;** | This property supplements the &#39;zonePlacementPolicy&#39; property. If &#39;zonePlacementPolicy&#39; is set to &#39;Any&#39;/&#39;Auto&#39;, availability zone selected by the system must be present in the list of availability zones passed with &#39;includeZones&#39;. If &#39;includeZones&#39; is not provided, all availability zones in region will be considered for selection. | [optional] |
| **exclude_zones** | **Array&lt;String&gt;** | This property supplements the &#39;zonePlacementPolicy&#39; property. If &#39;zonePlacementPolicy&#39; is set to &#39;Any&#39;/&#39;Auto&#39;, availability zone selected by the system must not be present in the list of availability zones passed with &#39;excludeZones&#39;. If &#39;excludeZones&#39; is not provided, all availability zones in region will be considered for selection. | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::Placement.new(
  zone_placement_policy: null,
  include_zones: null,
  exclude_zones: null
)
```

