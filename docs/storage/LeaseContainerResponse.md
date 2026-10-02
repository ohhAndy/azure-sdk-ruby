# AzureSDK::LeaseContainerResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **lease_id** | **String** | Returned unique lease ID that must be included with any request to delete the container, or to renew, change, or release the lease. | [optional] |
| **lease_time_seconds** | **String** | Approximate time remaining in the lease period, in seconds. | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::LeaseContainerResponse.new(
  lease_id: null,
  lease_time_seconds: null
)
```

