# AzureSDK::Cluster

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cluster_size** | **Integer** | Number of nodes assigned to the elastic cluster. | [optional][default to 0] |
| **default_database_name** | **String** | Default database name for the elastic cluster. | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::Cluster.new(
  cluster_size: null,
  default_database_name: null
)
```

