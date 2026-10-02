# AzureSDK::MaxInstancePercentPerZonePolicy

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **enabled** | **Boolean** | Specifies whether maxInstancePercentPerZonePolicy should be enabled on the virtual machine scale set. | [optional] |
| **value** | **Integer** | Limit on the number of instances in each zone as a percentage of the total capacity of the virtual machine scale set. | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::MaxInstancePercentPerZonePolicy.new(
  enabled: null,
  value: null
)
```

