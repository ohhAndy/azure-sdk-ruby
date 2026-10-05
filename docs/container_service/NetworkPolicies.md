# AzureRest::NetworkPolicies

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ingress** | **String** | Enum representing different network policy rules. | [optional][default to &#39;AllowSameNamespace&#39;] |
| **egress** | **String** | Enum representing different network policy rules. | [optional][default to &#39;AllowAll&#39;] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::NetworkPolicies.new(
  ingress: null,
  egress: null
)
```

