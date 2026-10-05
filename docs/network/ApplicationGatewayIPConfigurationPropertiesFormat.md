# AzureRest::ApplicationGatewayIPConfigurationPropertiesFormat

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subnet** | [**SubResource**](SubResource.md) |  | [optional] |
| **provisioning_state** | [**ProvisioningState**](ProvisioningState.md) |  | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::ApplicationGatewayIPConfigurationPropertiesFormat.new(
  subnet: null,
  provisioning_state: null
)
```

