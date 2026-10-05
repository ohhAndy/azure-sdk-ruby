# AzureRest::ObjectReplicationPolicies

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | [**Array&lt;ObjectReplicationPolicy&gt;**](ObjectReplicationPolicy.md) | The replication policy between two storage accounts. | [optional] |
| **next_link** | **String** |  | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::ObjectReplicationPolicies.new(
  value: null,
  next_link: null
)
```

