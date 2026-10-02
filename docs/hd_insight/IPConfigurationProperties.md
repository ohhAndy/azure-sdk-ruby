# AzureSDK::IPConfigurationProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **provisioning_state** | **String** | The private link configuration provisioning state, which only appears in the response. | [optional][readonly] |
| **primary** | **Boolean** | Indicates whether this IP configuration is primary for the corresponding NIC. | [optional] |
| **private_ip_address** | **String** | The IP address. | [optional] |
| **private_ip_allocation_method** | **String** | The method that private IP address is allocated. | [optional] |
| **subnet** | [**ResourceId**](ResourceId.md) |  | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::IPConfigurationProperties.new(
  provisioning_state: null,
  primary: null,
  private_ip_address: null,
  private_ip_allocation_method: null,
  subnet: null
)
```

