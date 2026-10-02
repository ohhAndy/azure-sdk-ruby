# AzureSDK::ObjectReplicationPolicyRule

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **rule_id** | **String** | Rule Id is auto-generated for each new rule on destination account. It is required for put policy on source account. | [optional] |
| **source_container** | **String** | Required. Source container name. |  |
| **destination_container** | **String** | Required. Destination container name. |  |
| **filters** | [**ObjectReplicationPolicyFilter**](ObjectReplicationPolicyFilter.md) |  | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::ObjectReplicationPolicyRule.new(
  rule_id: null,
  source_container: null,
  destination_container: null,
  filters: null
)
```

