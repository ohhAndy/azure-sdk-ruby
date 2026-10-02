# AzureSDK::LeaseShareRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **action** | [**LeaseShareAction**](LeaseShareAction.md) |  |  |
| **lease_id** | **String** | Identifies the lease. Can be specified in any valid GUID string format. | [optional] |
| **break_period** | **Integer** | Optional. For a break action, proposed duration the lease should continue before it is broken, in seconds, between 0 and 60. | [optional] |
| **lease_duration** | **Integer** | Required for acquire. Specifies the duration of the lease, in seconds, or negative one (-1) for a lease that never expires. | [optional] |
| **proposed_lease_id** | **String** | Optional for acquire, required for change. Proposed lease ID, in a GUID string format. | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::LeaseShareRequest.new(
  action: null,
  lease_id: null,
  break_period: null,
  lease_duration: null,
  proposed_lease_id: null
)
```

