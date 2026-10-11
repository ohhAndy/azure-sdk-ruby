# AzureRest::DdosCustomPolicyPropertiesFormat

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **resource_guid** | **String** | The resource GUID property of the DDoS custom policy resource. It uniquely identifies the resource, even if the user changes its name or migrate the resource across subscriptions or resource groups. | [optional][readonly] |
| **provisioning_state** | [**ProvisioningState**](ProvisioningState.md) |  | [optional] |
| **detection_rules** | [**Array&lt;DdosDetectionRule&gt;**](DdosDetectionRule.md) | The list of DDoS detection rules associated with the custom policy. | [optional] |
| **mitigation_rules** | [**Array&lt;DdosMitigationRule&gt;**](DdosMitigationRule.md) | The list of DDoS mitigation rules associated with the custom policy. | [optional] |
| **front_end_ip_configuration** | [**Array&lt;SubResource&gt;**](SubResource.md) | The list of frontend IP configurations associated with the custom policy. | [optional] |
| **public_ip_addresses** | [**Array&lt;SubResource&gt;**](SubResource.md) | The list of public IP addresses associated with the custom policy. This list is read-only. | [optional][readonly] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::DdosCustomPolicyPropertiesFormat.new(
  resource_guid: null,
  provisioning_state: null,
  detection_rules: null,
  mitigation_rules: null,
  front_end_ip_configuration: null,
  public_ip_addresses: null
)
```

