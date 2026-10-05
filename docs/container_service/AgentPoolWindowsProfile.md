# AzureRest::AgentPoolWindowsProfile

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **disable_outbound_nat** | **Boolean** | Whether to disable OutboundNAT in windows nodes. The default value is false. Outbound NAT can only be disabled if the cluster outboundType is NAT Gateway and the Windows agent pool does not have node public IP enabled. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::AgentPoolWindowsProfile.new(
  disable_outbound_nat: null
)
```

