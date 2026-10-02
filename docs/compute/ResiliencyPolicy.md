# AzureSDK::ResiliencyPolicy

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **resilient_vm_creation_policy** | [**ResilientVMCreationPolicy**](ResilientVMCreationPolicy.md) |  | [optional] |
| **resilient_vm_deletion_policy** | [**ResilientVMDeletionPolicy**](ResilientVMDeletionPolicy.md) |  | [optional] |
| **automatic_zone_rebalancing_policy** | [**AutomaticZoneRebalancingPolicy**](AutomaticZoneRebalancingPolicy.md) |  | [optional] |
| **zone_allocation_policy** | [**ZoneAllocationPolicy**](ZoneAllocationPolicy.md) |  | [optional] |
| **operation_recovery_settings** | [**OperationRecoverySettings**](OperationRecoverySettings.md) |  | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::ResiliencyPolicy.new(
  resilient_vm_creation_policy: null,
  resilient_vm_deletion_policy: null,
  automatic_zone_rebalancing_policy: null,
  zone_allocation_policy: null,
  operation_recovery_settings: null
)
```

