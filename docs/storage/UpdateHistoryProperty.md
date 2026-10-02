# AzureSDK::UpdateHistoryProperty

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **update** | [**ImmutabilityPolicyUpdateType**](ImmutabilityPolicyUpdateType.md) |  | [optional] |
| **immutability_period_since_creation_in_days** | **Integer** | The immutability period for the blobs in the container since the policy creation, in days. | [optional][readonly] |
| **timestamp** | **Time** | Returns the date and time the ImmutabilityPolicy was updated. | [optional][readonly] |
| **object_identifier** | **String** | Returns the Object ID of the user who updated the ImmutabilityPolicy. | [optional][readonly] |
| **tenant_id** | **String** | Returns the Tenant ID that issued the token for the user who updated the ImmutabilityPolicy. | [optional][readonly] |
| **upn** | **String** | Returns the User Principal Name of the user who updated the ImmutabilityPolicy. | [optional][readonly] |
| **allow_protected_append_writes** | **Boolean** | This property can only be changed for unlocked time-based retention policies. When enabled, new blocks can be written to an append blob while maintaining immutability protection and compliance. Only new blocks can be added and any existing blocks cannot be modified or deleted. This property cannot be changed with ExtendImmutabilityPolicy API. | [optional] |
| **allow_protected_append_writes_all** | **Boolean** | This property can only be changed for unlocked time-based retention policies. When enabled, new blocks can be written to both &#39;Append and Bock Blobs&#39; while maintaining immutability protection and compliance. Only new blocks can be added and any existing blocks cannot be modified or deleted. This property cannot be changed with ExtendImmutabilityPolicy API. The &#39;allowProtectedAppendWrites&#39; and &#39;allowProtectedAppendWritesAll&#39; properties are mutually exclusive. | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::UpdateHistoryProperty.new(
  update: null,
  immutability_period_since_creation_in_days: null,
  timestamp: null,
  object_identifier: null,
  tenant_id: null,
  upn: null,
  allow_protected_append_writes: null,
  allow_protected_append_writes_all: null
)
```

