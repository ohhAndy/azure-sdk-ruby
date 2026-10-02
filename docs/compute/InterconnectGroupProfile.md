# AzureSDK::InterconnectGroupProfile

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **interconnect_group** | [**SubResource**](SubResource.md) |  | [optional] |
| **subgroups** | [**Array&lt;SubResource&gt;**](SubResource.md) | The list of subgroup references within the interconnect group. | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::InterconnectGroupProfile.new(
  interconnect_group: null,
  subgroups: null
)
```

