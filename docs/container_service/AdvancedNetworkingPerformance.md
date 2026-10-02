# AzureSDK::AdvancedNetworkingPerformance

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **acceleration_mode** | **String** | Enable advanced network acceleration options. This allows users to configure acceleration using BPF host routing. This can be enabled only with Cilium dataplane. If not specified, the default value is None (no acceleration). The acceleration mode can be changed on a pre-existing cluster. See https://aka.ms/acnsperformance for a detailed explanation | [optional][default to &#39;None&#39;] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::AdvancedNetworkingPerformance.new(
  acceleration_mode: null
)
```

