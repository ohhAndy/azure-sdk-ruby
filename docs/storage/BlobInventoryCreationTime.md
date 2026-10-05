# AzureRest::BlobInventoryCreationTime

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **last_n_days** | **Integer** | When set the policy filters the objects that are created in the last N days. Where N is an integer value between 1 to 36500. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::BlobInventoryCreationTime.new(
  last_n_days: null
)
```

