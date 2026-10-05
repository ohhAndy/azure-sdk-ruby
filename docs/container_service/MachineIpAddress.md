# AzureRest::MachineIpAddress

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **family** | [**IPFamily**](IPFamily.md) |  | [optional] |
| **ip** | **String** | IPv4 or IPv6 address of the machine | [optional][readonly] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::MachineIpAddress.new(
  family: null,
  ip: null
)
```

