# AzureSDK::ObjectReplicationPolicyFilter

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **prefix_match** | **Array&lt;String&gt;** | Optional. Filters the results to replicate only blobs whose names begin with the specified prefix. | [optional] |
| **min_creation_time** | **String** | Blobs created after the time will be replicated to the destination. It must be in datetime format &#39;yyyy-MM-ddTHH:mm:ssZ&#39;. Example: 2020-02-19T16:05:00Z | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::ObjectReplicationPolicyFilter.new(
  prefix_match: null,
  min_creation_time: null
)
```

