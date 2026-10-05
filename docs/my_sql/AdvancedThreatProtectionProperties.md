# AzureRest::AdvancedThreatProtectionProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **creation_time** | **Time** | Specifies the UTC creation time of the policy. | [optional][readonly] |
| **state** | [**AdvancedThreatProtectionState**](AdvancedThreatProtectionState.md) |  | [optional] |
| **provisioning_state** | [**AdvancedThreatProtectionProvisioningState**](AdvancedThreatProtectionProvisioningState.md) |  | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::AdvancedThreatProtectionProperties.new(
  creation_time: null,
  state: null,
  provisioning_state: null
)
```

