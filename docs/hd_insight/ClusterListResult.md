# AzureSDK::ClusterListResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | [**Array&lt;Cluster&gt;**](Cluster.md) | The list of Clusters. | [optional] |
| **next_link** | **String** | The link (url) to the next page of results. | [optional][readonly] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::ClusterListResult.new(
  value: null,
  next_link: null
)
```

