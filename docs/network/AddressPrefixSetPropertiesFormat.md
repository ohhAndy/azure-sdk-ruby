# AzureRest::AddressPrefixSetPropertiesFormat

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address_prefixes** | **Array&lt;String&gt;** | The list of address prefixes in CIDR notation. Supports both IPv4 and IPv6 CIDR notation (e.g. &#39;10.0.0.0/16&#39;, &#39;2001:db8::/32&#39;). |  |
| **provisioning_state** | [**ProvisioningState**](ProvisioningState.md) |  | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::AddressPrefixSetPropertiesFormat.new(
  address_prefixes: null,
  provisioning_state: null
)
```

