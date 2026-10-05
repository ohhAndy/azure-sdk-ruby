# AzureRest::ObjectReplicationPolicyProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **policy_id** | **String** | A unique id for object replication policy. | [optional][readonly] |
| **enabled_time** | **Time** | Indicates when the policy is enabled on the source account. | [optional][readonly] |
| **source_account** | **String** | Required. Source account name. It should be full resource id if allowCrossTenantReplication set to false. |  |
| **destination_account** | **String** | Required. Destination account name. It should be full resource id if allowCrossTenantReplication set to false. |  |
| **rules** | [**Array&lt;ObjectReplicationPolicyRule&gt;**](ObjectReplicationPolicyRule.md) | The storage account object replication rules. | [optional] |
| **metrics** | [**ObjectReplicationPolicyPropertiesMetrics**](ObjectReplicationPolicyPropertiesMetrics.md) |  | [optional] |
| **priority_replication** | [**ObjectReplicationPolicyPropertiesPriorityReplication**](ObjectReplicationPolicyPropertiesPriorityReplication.md) |  | [optional] |
| **tags_replication** | [**ObjectReplicationPolicyPropertiesTagsReplication**](ObjectReplicationPolicyPropertiesTagsReplication.md) |  | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::ObjectReplicationPolicyProperties.new(
  policy_id: null,
  enabled_time: null,
  source_account: null,
  destination_account: null,
  rules: null,
  metrics: null,
  priority_replication: null,
  tags_replication: null
)
```

