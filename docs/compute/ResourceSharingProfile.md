# AzureSDK::ResourceSharingProfile

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subscription_ids** | [**Array&lt;SubResource&gt;**](SubResource.md) | Specifies an array of subscription resource IDs that capacity reservation group is shared with. Block Capacity Reservations does not support sharing across subscriptions. **Note:** Minimum api-version: 2023-09-01. Please refer to https://aka.ms/computereservationsharing for more details. | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::ResourceSharingProfile.new(
  subscription_ids: null
)
```

