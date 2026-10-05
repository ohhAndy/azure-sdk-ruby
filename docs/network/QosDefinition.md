# AzureRest::QosDefinition

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **markings** | **Array&lt;Integer&gt;** | List of markings to be used in the configuration. | [optional] |
| **source_ip_ranges** | [**Array&lt;QosIpRange&gt;**](QosIpRange.md) | Source IP ranges. | [optional] |
| **destination_ip_ranges** | [**Array&lt;QosIpRange&gt;**](QosIpRange.md) | Destination IP ranges. | [optional] |
| **source_port_ranges** | [**Array&lt;QosPortRange&gt;**](QosPortRange.md) | Sources port ranges. | [optional] |
| **destination_port_ranges** | [**Array&lt;QosPortRange&gt;**](QosPortRange.md) | Destination port ranges. | [optional] |
| **protocol** | [**ProtocolType**](ProtocolType.md) |  | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::QosDefinition.new(
  markings: null,
  source_ip_ranges: null,
  destination_ip_ranges: null,
  source_port_ranges: null,
  destination_port_ranges: null,
  protocol: null
)
```

