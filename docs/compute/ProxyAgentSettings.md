# AzureSDK::ProxyAgentSettings

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **enabled** | **Boolean** | Specifies whether ProxyAgent feature should be enabled on the virtual machine or virtual machine scale set. | [optional] |
| **mode** | [**Mode**](Mode.md) |  | [optional] |
| **key_incarnation_id** | **Integer** | Increase the value of this property allows users to reset the key used for securing communication channel between guest and host. | [optional] |
| **wire_server** | [**HostEndpointSettings**](HostEndpointSettings.md) |  | [optional] |
| **imds** | [**HostEndpointSettings**](HostEndpointSettings.md) |  | [optional] |
| **add_proxy_agent_extension** | **Boolean** | Specify whether to implicitly install the ProxyAgent Extension. This option is currently applicable only for Linux Os. | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::ProxyAgentSettings.new(
  enabled: null,
  mode: null,
  key_incarnation_id: null,
  wire_server: null,
  imds: null,
  add_proxy_agent_extension: null
)
```

