# AzureRest::InterconnectInstanceView

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **interconnect_subgroup_id** | **String** | The ID (GUID) of the Interconnect subgroup in which the Virtual Machine was placed. | [optional][readonly] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::InterconnectInstanceView.new(
  interconnect_subgroup_id: null
)
```

