# AzureRest::IPAddressAvailabilityResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **available** | **Boolean** | Private IP address availability. | [optional] |
| **available_ip_addresses** | **Array&lt;String&gt;** | Contains other available private IP addresses if the asked for address is taken. | [optional] |
| **is_platform_reserved** | **Boolean** | Private IP address platform reserved. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::IPAddressAvailabilityResult.new(
  available: null,
  available_ip_addresses: null,
  is_platform_reserved: null
)
```

