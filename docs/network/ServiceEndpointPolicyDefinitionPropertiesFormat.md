# AzureSDK::ServiceEndpointPolicyDefinitionPropertiesFormat

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **description** | **String** | A description for this rule. Restricted to 140 chars. | [optional] |
| **service** | **String** | Service endpoint name. | [optional] |
| **service_resources** | **Array&lt;String&gt;** | A list of service resources. | [optional] |
| **provisioning_state** | [**ProvisioningState**](ProvisioningState.md) |  | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::ServiceEndpointPolicyDefinitionPropertiesFormat.new(
  description: null,
  service: null,
  service_resources: null,
  provisioning_state: null
)
```

