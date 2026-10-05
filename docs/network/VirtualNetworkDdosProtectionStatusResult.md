# AzureRest::VirtualNetworkDdosProtectionStatusResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | [**Array&lt;PublicIpDdosProtectionStatusResult&gt;**](PublicIpDdosProtectionStatusResult.md) | The PublicIpDdosProtectionStatusResult items on this page |  |
| **next_link** | **String** | The link to the next page of items | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::VirtualNetworkDdosProtectionStatusResult.new(
  value: null,
  next_link: null
)
```

