# AzureRest::AccountImmutabilityPolicyProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **immutability_period_since_creation_in_days** | **Integer** | The immutability period for the blobs in the container since the policy creation, in days. | [optional] |
| **state** | [**AccountImmutabilityPolicyState**](AccountImmutabilityPolicyState.md) |  | [optional] |
| **allow_protected_append_writes** | **Boolean** | This property can only be changed for disabled and unlocked time-based retention policies. When enabled, new blocks can be written to an append blob while maintaining immutability protection and compliance. Only new blocks can be added and any existing blocks cannot be modified or deleted. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::AccountImmutabilityPolicyProperties.new(
  immutability_period_since_creation_in_days: null,
  state: null,
  allow_protected_append_writes: null
)
```

