# AzureRest::AdvancedPlatformMetricsRuleConfig

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter_type** | [**AdvancedPlatformMetricsFilterType**](AdvancedPlatformMetricsFilterType.md) |  | [optional] |
| **filter_values** | **Array&lt;String&gt;** | The values for the filter applied to the rule. If filter type is AllContainersFilter, filter values should be empty. If filter type is ContainerPrefixFilter, filter values should contain a list of container prefixes. If filter type is ContainerListFilter, filter values should contain a list of container names. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::AdvancedPlatformMetricsRuleConfig.new(
  filter_type: null,
  filter_values: null
)
```

