# AzureRest::MonetaryCredit

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **credit** | **Float** | The amount of credit provided under the terms of the given offer level. | [optional] |
| **excluded_meter_ids** | **Array&lt;String&gt;** | An array of meter ids that are excluded from the given offer terms. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::MonetaryCredit.new(
  credit: null,
  excluded_meter_ids: null
)
```

