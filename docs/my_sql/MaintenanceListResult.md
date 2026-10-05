# AzureRest::MaintenanceListResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | [**Array&lt;Maintenance&gt;**](Maintenance.md) | The Maintenance items on this page | [optional] |
| **next_link** | **String** | The link to the next page of items | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::MaintenanceListResult.new(
  value: null,
  next_link: null
)
```

