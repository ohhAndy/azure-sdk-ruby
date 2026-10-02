# AzureSDK::ScheduledQueryRuleResourcePatch

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **identity** | [**Identity**](Identity.md) |  | [optional] |
| **tags** | **Hash&lt;String, String&gt;** | Resource tags | [optional] |
| **properties** | [**ScheduledQueryRuleProperties**](ScheduledQueryRuleProperties.md) |  | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::ScheduledQueryRuleResourcePatch.new(
  identity: null,
  tags: null,
  properties: null
)
```

