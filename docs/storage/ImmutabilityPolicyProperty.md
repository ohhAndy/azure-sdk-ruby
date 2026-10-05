# AzureRest::ImmutabilityPolicyProperty

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **immutability_period_since_creation_in_days** | **Integer** | The immutability period for the blobs in the container since the policy creation, in days. | [optional] |
| **state** | [**ImmutabilityPolicyState**](ImmutabilityPolicyState.md) |  | [optional] |
| **allow_protected_append_writes** | **Boolean** | This property can only be changed for unlocked time-based retention policies. When enabled, new blocks can be written to an append blob while maintaining immutability protection and compliance. Only new blocks can be added and any existing blocks cannot be modified or deleted. This property cannot be changed with ExtendImmutabilityPolicy API. | [optional] |
| **allow_protected_append_writes_all** | **Boolean** | This property can only be changed for unlocked time-based retention policies. When enabled, new blocks can be written to both &#39;Append and Bock Blobs&#39; while maintaining immutability protection and compliance. Only new blocks can be added and any existing blocks cannot be modified or deleted. This property cannot be changed with ExtendImmutabilityPolicy API. The &#39;allowProtectedAppendWrites&#39; and &#39;allowProtectedAppendWritesAll&#39; properties are mutually exclusive. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::ImmutabilityPolicyProperty.new(
  immutability_period_since_creation_in_days: null,
  state: null,
  allow_protected_append_writes: null,
  allow_protected_append_writes_all: null
)
```

