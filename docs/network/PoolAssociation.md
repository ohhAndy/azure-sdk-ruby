# AzureSDK::PoolAssociation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **resource_id** | **String** | Resource id of the associated Azure resource. |  |
| **pool_id** | **String** | IpamPool id for which the resource is associated to. | [optional] |
| **description** | **String** |  | [optional] |
| **address_prefixes** | **Array&lt;String&gt;** | List of assigned IP address prefixes in the IpamPool of the associated resource. | [optional][readonly] |
| **reserved_prefixes** | **Array&lt;String&gt;** | List of reserved IP address prefixes in the IpamPool of the associated resource. | [optional][readonly] |
| **total_number_of_ip_addresses** | **String** | Total number of assigned IP addresses of the association. | [optional][readonly] |
| **number_of_reserved_ip_addresses** | **String** | Total number of reserved IP addresses of the association. | [optional][readonly] |
| **created_at** | **Time** | Creation time of the association. | [optional][readonly] |
| **reservation_expires_at** | **Time** | Expire time for IP addresses reserved. | [optional][readonly] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::PoolAssociation.new(
  resource_id: null,
  pool_id: null,
  description: null,
  address_prefixes: null,
  reserved_prefixes: null,
  total_number_of_ip_addresses: null,
  number_of_reserved_ip_addresses: null,
  created_at: null,
  reservation_expires_at: null
)
```

