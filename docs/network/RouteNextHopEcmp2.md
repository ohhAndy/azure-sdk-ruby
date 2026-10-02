# AzureSDK::RouteNextHopEcmp2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **next_hop_ip_addresses** | **Array&lt;String&gt;** | List of next hop IP addresses for ECMP routing. Must contain between 2 and 64 IP addresses. |  |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::RouteNextHopEcmp2.new(
  next_hop_ip_addresses: null
)
```

