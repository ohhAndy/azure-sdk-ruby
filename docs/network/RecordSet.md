# AzureSDK::RecordSet

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **record_type** | **String** | Resource record type. | [optional] |
| **record_set_name** | **String** | Recordset name. | [optional] |
| **fqdn** | **String** | Fqdn that resolves to private endpoint ip address. | [optional] |
| **provisioning_state** | [**ProvisioningState**](ProvisioningState.md) |  | [optional] |
| **ttl** | **Integer** | Recordset time to live. | [optional] |
| **ip_addresses** | **Array&lt;String&gt;** | The private ip address of the private endpoint. | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::RecordSet.new(
  record_type: null,
  record_set_name: null,
  fqdn: null,
  provisioning_state: null,
  ttl: null,
  ip_addresses: null
)
```

