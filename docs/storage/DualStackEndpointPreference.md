# AzureRest::DualStackEndpointPreference

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **publish_ipv6_endpoint** | **Boolean** | A boolean flag which indicates whether IPv6 storage endpoints are to be published. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::DualStackEndpointPreference.new(
  publish_ipv6_endpoint: null
)
```

