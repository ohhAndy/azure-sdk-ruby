# AzureSDK::NetworkInterfaceLoadBalancerListResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | [**Array&lt;LoadBalancer&gt;**](LoadBalancer.md) | The LoadBalancer items on this page |  |
| **next_link** | **String** | The link to the next page of items | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::NetworkInterfaceLoadBalancerListResult.new(
  value: null,
  next_link: null
)
```

