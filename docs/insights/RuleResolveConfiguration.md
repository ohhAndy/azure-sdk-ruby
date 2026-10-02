# AzureSDK::RuleResolveConfiguration

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **auto_resolved** | **Boolean** | The flag that indicates whether or not to auto resolve a fired alert. | [optional] |
| **time_to_resolve** | **String** | The duration a rule must evaluate as healthy before the fired alert is automatically resolved represented in ISO 8601 duration format. | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::RuleResolveConfiguration.new(
  auto_resolved: null,
  time_to_resolve: null
)
```

