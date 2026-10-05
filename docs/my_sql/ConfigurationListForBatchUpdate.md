# AzureRest::ConfigurationListForBatchUpdate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | [**Array&lt;ConfigurationForBatchUpdate&gt;**](ConfigurationForBatchUpdate.md) | The list of server configurations. | [optional] |
| **reset_all_to_default** | [**ResetAllToDefault**](ResetAllToDefault.md) |  | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::ConfigurationListForBatchUpdate.new(
  value: null,
  reset_all_to_default: null
)
```

