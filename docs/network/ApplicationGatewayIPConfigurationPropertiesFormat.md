# AzureSDK::ApplicationGatewayIPConfigurationPropertiesFormat

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subnet** | [**SubResource**](SubResource.md) |  | [optional] |
| **provisioning_state** | [**ProvisioningState**](ProvisioningState.md) |  | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::ApplicationGatewayIPConfigurationPropertiesFormat.new(
  subnet: null,
  provisioning_state: null
)
```

