# AzureRest::VirtualNetworkUsageName

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **localized_value** | **String** | Localized subnet size and usage string. | [optional][readonly] |
| **value** | **String** | Subnet size and usage string. | [optional][readonly] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::VirtualNetworkUsageName.new(
  localized_value: null,
  value: null
)
```

