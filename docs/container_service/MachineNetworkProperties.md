# AzureSDK::MachineNetworkProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ip_addresses** | [**Array&lt;MachineIpAddress&gt;**](MachineIpAddress.md) | IPv4, IPv6 addresses of the machine | [optional][readonly] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::MachineNetworkProperties.new(
  ip_addresses: null
)
```

