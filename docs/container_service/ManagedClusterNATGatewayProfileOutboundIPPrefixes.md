# AzureRest::ManagedClusterNATGatewayProfileOutboundIPPrefixes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **public_ip_prefixes** | **Array&lt;String&gt;** | A list of public IP prefix resources. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::ManagedClusterNATGatewayProfileOutboundIPPrefixes.new(
  public_ip_prefixes: null
)
```

