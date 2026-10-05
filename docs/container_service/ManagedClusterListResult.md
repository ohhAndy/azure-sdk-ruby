# AzureRest::ManagedClusterListResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | [**Array&lt;ManagedCluster&gt;**](ManagedCluster.md) | The ManagedCluster items on this page |  |
| **next_link** | **String** | The link to the next page of items | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::ManagedClusterListResult.new(
  value: null,
  next_link: null
)
```

