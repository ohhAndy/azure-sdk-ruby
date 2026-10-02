# AzureSDK::IPTraffic

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **source_ips** | **Array&lt;String&gt;** | List of source IP addresses of the traffic.. |  |
| **destination_ips** | **Array&lt;String&gt;** | List of destination IP addresses of the traffic.. |  |
| **source_ports** | **Array&lt;String&gt;** | The source ports of the traffic. |  |
| **destination_ports** | **Array&lt;String&gt;** | The destination ports of the traffic. |  |
| **protocols** | [**Array&lt;NetworkProtocol&gt;**](NetworkProtocol.md) |  |  |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::IPTraffic.new(
  source_ips: null,
  destination_ips: null,
  source_ports: null,
  destination_ports: null,
  protocols: null
)
```

