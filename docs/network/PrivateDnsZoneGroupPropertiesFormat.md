# AzureRest::PrivateDnsZoneGroupPropertiesFormat

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **provisioning_state** | [**ProvisioningState**](ProvisioningState.md) |  | [optional] |
| **private_dns_zone_configs** | [**Array&lt;PrivateDnsZoneConfig&gt;**](PrivateDnsZoneConfig.md) | A collection of private dns zone configurations of the private dns zone group. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::PrivateDnsZoneGroupPropertiesFormat.new(
  provisioning_state: null,
  private_dns_zone_configs: null
)
```

