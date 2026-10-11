# AzureRest::DdosSourceMatchConditions

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ip_prefixes** | **Array&lt;String&gt;** | The IPv4 or IPv6 CIDR prefixes in &#x60;&lt;address&gt;/&lt;prefix-length&gt;&#x60; format. Entries are evaluated with OR semantics. | [optional] |
| **geo_matches** | [**Array&lt;DdosGeoMatch&gt;**](DdosGeoMatch.md) | The geographic matches. Entries are evaluated with OR semantics. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::DdosSourceMatchConditions.new(
  ip_prefixes: null,
  geo_matches: null
)
```

