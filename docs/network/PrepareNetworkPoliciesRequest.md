# AzureRest::PrepareNetworkPoliciesRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_name** | **String** | The name of the service for which subnet is being prepared for. | [optional] |
| **network_intent_policy_configurations** | [**Array&lt;NetworkIntentPolicyConfiguration&gt;**](NetworkIntentPolicyConfiguration.md) | A list of NetworkIntentPolicyConfiguration. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::PrepareNetworkPoliciesRequest.new(
  service_name: null,
  network_intent_policy_configurations: null
)
```

