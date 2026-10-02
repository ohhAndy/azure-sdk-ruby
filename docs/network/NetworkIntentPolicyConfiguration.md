# AzureSDK::NetworkIntentPolicyConfiguration

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **network_intent_policy_name** | **String** | The name of the Network Intent Policy for storing in target subscription. | [optional] |
| **source_network_intent_policy** | [**NetworkIntentPolicy**](NetworkIntentPolicy.md) |  | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::NetworkIntentPolicyConfiguration.new(
  network_intent_policy_name: null,
  source_network_intent_policy: null
)
```

