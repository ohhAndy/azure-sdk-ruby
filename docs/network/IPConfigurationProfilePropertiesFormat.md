# AzureRest::IPConfigurationProfilePropertiesFormat

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subnet** | [**Subnet**](Subnet.md) |  | [optional] |
| **provisioning_state** | [**ProvisioningState**](ProvisioningState.md) |  | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::IPConfigurationProfilePropertiesFormat.new(
  subnet: null,
  provisioning_state: null
)
```

