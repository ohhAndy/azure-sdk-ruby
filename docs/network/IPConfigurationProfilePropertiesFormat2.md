# AzureRest::IPConfigurationProfilePropertiesFormat2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subnet** | [**Subnet2**](Subnet2.md) |  | [optional] |
| **provisioning_state** | [**ProvisioningState**](ProvisioningState.md) |  | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::IPConfigurationProfilePropertiesFormat2.new(
  subnet: null,
  provisioning_state: null
)
```

