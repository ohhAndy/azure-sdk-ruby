# AzureSDK::AgentPoolNetworkProfile

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **node_public_ip_tags** | [**Array&lt;IPTag&gt;**](IPTag.md) | IPTags of instance-level public IPs. | [optional] |
| **allowed_host_ports** | [**Array&lt;PortRange&gt;**](PortRange.md) | The port ranges that are allowed to access. The specified ranges are allowed to overlap. | [optional] |
| **application_security_groups** | **Array&lt;String&gt;** | The IDs of the application security groups which agent pool will associate when created. | [optional] |
| **dranet** | [**DRANETProfile**](DRANETProfile.md) |  | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::AgentPoolNetworkProfile.new(
  node_public_ip_tags: null,
  allowed_host_ports: null,
  application_security_groups: null,
  dranet: null
)
```

