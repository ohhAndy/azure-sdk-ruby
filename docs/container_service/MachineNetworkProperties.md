# AzureRest::MachineNetworkProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ip_addresses** | [**Array&lt;MachineIpAddress&gt;**](MachineIpAddress.md) | IPv4, IPv6 addresses of the machine | [optional][readonly] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::MachineNetworkProperties.new(
  ip_addresses: null
)
```

