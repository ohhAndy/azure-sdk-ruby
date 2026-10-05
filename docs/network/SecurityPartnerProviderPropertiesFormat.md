# AzureRest::SecurityPartnerProviderPropertiesFormat

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **provisioning_state** | [**ProvisioningState**](ProvisioningState.md) |  | [optional] |
| **security_provider_name** | [**SecurityProviderName**](SecurityProviderName.md) |  | [optional] |
| **connection_status** | [**SecurityPartnerProviderConnectionStatus**](SecurityPartnerProviderConnectionStatus.md) |  | [optional] |
| **virtual_hub** | [**SubResource**](SubResource.md) |  | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::SecurityPartnerProviderPropertiesFormat.new(
  provisioning_state: null,
  security_provider_name: null,
  connection_status: null,
  virtual_hub: null
)
```

