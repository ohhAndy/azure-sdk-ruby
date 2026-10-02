# AzureSDK::AgentPoolGatewayProfile

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **public_ip_prefix_size** | **Integer** | The Gateway agent pool associates one public IPPrefix for each static egress gateway to provide public egress. The size of Public IPPrefix should be selected by the user. Each node in the agent pool is assigned with one IP from the IPPrefix. The IPPrefix size thus serves as a cap on the size of the Gateway agent pool. Due to Azure public IPPrefix size limitation, the valid value range is [28, 31] (/31 &#x3D; 2 nodes/IPs, /30 &#x3D; 4 nodes/IPs, /29 &#x3D; 8 nodes/IPs, /28 &#x3D; 16 nodes/IPs). The default value is 31. | [optional][default to 31] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::AgentPoolGatewayProfile.new(
  public_ip_prefix_size: null
)
```

