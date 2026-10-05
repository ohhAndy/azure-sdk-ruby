# AzureRest::ScheduledQueryRuleResourceCollection

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | [**Array&lt;ScheduledQueryRuleResource&gt;**](ScheduledQueryRuleResource.md) | The values for the scheduled query rule resources. | [optional] |
| **next_link** | **String** | Provides the link to retrieve the next set of elements. | [optional][readonly] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::ScheduledQueryRuleResourceCollection.new(
  value: null,
  next_link: null
)
```

