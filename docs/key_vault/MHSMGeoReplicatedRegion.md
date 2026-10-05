# AzureRest::MHSMGeoReplicatedRegion

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of the geo replicated region. | [optional] |
| **provisioning_state** | [**GeoReplicationRegionProvisioningState**](GeoReplicationRegionProvisioningState.md) |  | [optional] |
| **is_primary** | **Boolean** | A boolean value that indicates whether the region is the primary region or a secondary region. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::MHSMGeoReplicatedRegion.new(
  name: null,
  provisioning_state: null,
  is_primary: null
)
```

