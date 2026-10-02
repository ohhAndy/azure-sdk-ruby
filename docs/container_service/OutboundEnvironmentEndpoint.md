# AzureSDK::OutboundEnvironmentEndpoint

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **category** | **String** | The category of endpoints accessed by the AKS agent node, e.g. azure-resource-management, apiserver, etc. | [optional] |
| **endpoints** | [**Array&lt;EndpointDependency&gt;**](EndpointDependency.md) | The endpoints that AKS agent nodes connect to | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::OutboundEnvironmentEndpoint.new(
  category: null,
  endpoints: null
)
```

