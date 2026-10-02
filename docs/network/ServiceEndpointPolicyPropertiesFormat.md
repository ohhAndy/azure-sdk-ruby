# AzureSDK::ServiceEndpointPolicyPropertiesFormat

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_endpoint_policy_definitions** | [**Array&lt;ServiceEndpointPolicyDefinition&gt;**](ServiceEndpointPolicyDefinition.md) | A collection of service endpoint policy definitions of the service endpoint policy. | [optional] |
| **subnets** | [**Array&lt;Subnet2&gt;**](Subnet2.md) | A collection of references to subnets. | [optional][readonly] |
| **resource_guid** | **String** | The resource GUID property of the service endpoint policy resource. | [optional][readonly] |
| **provisioning_state** | [**ProvisioningState**](ProvisioningState.md) |  | [optional] |
| **service_alias** | **String** | The alias indicating if the policy belongs to a service | [optional] |
| **contextual_service_endpoint_policies** | **Array&lt;String&gt;** | A collection of contextual service endpoint policy. | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::ServiceEndpointPolicyPropertiesFormat.new(
  service_endpoint_policy_definitions: null,
  subnets: null,
  resource_guid: null,
  provisioning_state: null,
  service_alias: null,
  contextual_service_endpoint_policies: null
)
```

