# AzureSDK::ManagedClusterListResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | [**Array&lt;ManagedCluster&gt;**](ManagedCluster.md) | The ManagedCluster items on this page |  |
| **next_link** | **String** | The link to the next page of items | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::ManagedClusterListResult.new(
  value: null,
  next_link: null
)
```

