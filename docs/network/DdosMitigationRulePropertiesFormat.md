# AzureRest::DdosMitigationRulePropertiesFormat

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **provisioning_state** | [**ProvisioningState**](ProvisioningState.md) |  | [optional] |
| **traffic_scope** | [**DdosMitigationTrafficScope**](DdosMitigationTrafficScope.md) |  |  |
| **tcp_default_mitigations** | [**DdosTcpDefaultMitigations**](DdosTcpDefaultMitigations.md) |  | [optional] |
| **udp_default_mitigations** | [**DdosUdpDefaultMitigations**](DdosUdpDefaultMitigations.md) |  | [optional] |
| **source_policy_overrides** | [**Array&lt;DdosSourcePolicyOverride&gt;**](DdosSourcePolicyOverride.md) | Source-specific actions that override the default mitigations. A rule supports at most one Deny override and one Permit override. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::DdosMitigationRulePropertiesFormat.new(
  provisioning_state: null,
  traffic_scope: null,
  tcp_default_mitigations: null,
  udp_default_mitigations: null,
  source_policy_overrides: null
)
```

