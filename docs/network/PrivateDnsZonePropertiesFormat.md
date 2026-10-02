# AzureSDK::PrivateDnsZonePropertiesFormat

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **private_dns_zone_id** | **String** | The resource id of the private dns zone. | [optional] |
| **record_sets** | [**Array&lt;RecordSet&gt;**](RecordSet.md) | A collection of information regarding a recordSet, holding information to identify private resources. | [optional][readonly] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::PrivateDnsZonePropertiesFormat.new(
  private_dns_zone_id: null,
  record_sets: null
)
```

