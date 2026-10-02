# AzureSDK::ManagedClusterManagedOutboundIPProfile

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **count** | **Integer** | The desired number of outbound IPs created/managed by Azure. Allowed values must be in the range of 1 to 16 (inclusive). The default value is 1. | [optional][default to 1] |
| **count_ipv6** | **Integer** | The desired number of IPv6 outbound IPs created/managed by Azure. Allowed values must be in the range of 1 to 16 (inclusive). | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::ManagedClusterManagedOutboundIPProfile.new(
  count: null,
  count_ipv6: null
)
```

