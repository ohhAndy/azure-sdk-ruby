# AzureSDK::ReachabilityAnalysisIntentProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **provisioning_state** | [**ProvisioningState**](ProvisioningState.md) |  | [optional] |
| **description** | **String** |  | [optional] |
| **source_resource_id** | **String** | Source resource id to verify the reachability path of. |  |
| **destination_resource_id** | **String** | Destination resource id to verify the reachability path of. |  |
| **ip_traffic** | [**IPTraffic**](IPTraffic.md) |  |  |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::ReachabilityAnalysisIntentProperties.new(
  provisioning_state: null,
  description: null,
  source_resource_id: null,
  destination_resource_id: null,
  ip_traffic: null
)
```

