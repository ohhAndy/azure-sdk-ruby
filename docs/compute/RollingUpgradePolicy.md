# AzureRest::RollingUpgradePolicy

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **max_batch_instance_percent** | **Integer** | The maximum percent of total virtual machine instances that will be upgraded simultaneously by the rolling upgrade in one batch. As this is a maximum, unhealthy instances in previous or future batches can cause the percentage of instances in a batch to decrease to ensure higher reliability. The default value for this parameter is 20%. | [optional] |
| **max_unhealthy_instance_percent** | **Integer** | The maximum percentage of the total virtual machine instances in the scale set that can be simultaneously unhealthy, either as a result of being upgraded, or by being found in an unhealthy state by the virtual machine health checks before the rolling upgrade aborts. This constraint will be checked prior to starting any batch. The default value for this parameter is 20%. | [optional] |
| **max_unhealthy_upgraded_instance_percent** | **Integer** | The maximum percentage of upgraded virtual machine instances that can be found to be in an unhealthy state. This check will happen after each batch is upgraded. If this percentage is ever exceeded, the rolling update aborts. The default value for this parameter is 20%. | [optional] |
| **pause_time_between_batches** | **String** | The wait time between completing the update for all virtual machines in one batch and starting the next batch. The time duration should be specified in ISO 8601 format. The default value is 0 seconds (PT0S). | [optional] |
| **enable_cross_zone_upgrade** | **Boolean** | Allow VMSS to ignore AZ boundaries when constructing upgrade batches. Take into consideration the Update Domain and maxBatchInstancePercent to determine the batch size. | [optional] |
| **prioritize_unhealthy_instances** | **Boolean** | Upgrade all unhealthy instances in a scale set before any healthy instances. | [optional] |
| **rollback_failed_instances_on_policy_breach** | **Boolean** | Rollback failed instances to previous model if the Rolling Upgrade policy is violated. | [optional] |
| **max_surge** | **Boolean** | Create new virtual machines to upgrade the scale set, rather than updating the existing virtual machines. Existing virtual machines will be deleted once the new virtual machines are created for each batch. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::RollingUpgradePolicy.new(
  max_batch_instance_percent: null,
  max_unhealthy_instance_percent: null,
  max_unhealthy_upgraded_instance_percent: null,
  pause_time_between_batches: null,
  enable_cross_zone_upgrade: null,
  prioritize_unhealthy_instances: null,
  rollback_failed_instances_on_policy_breach: null,
  max_surge: null
)
```

