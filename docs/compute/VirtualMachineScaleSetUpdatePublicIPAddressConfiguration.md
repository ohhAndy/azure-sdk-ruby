# AzureRest::VirtualMachineScaleSetUpdatePublicIPAddressConfiguration

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The publicIP address configuration name. | [optional] |
| **properties** | [**VirtualMachineScaleSetUpdatePublicIPAddressConfigurationProperties**](VirtualMachineScaleSetUpdatePublicIPAddressConfigurationProperties.md) |  | [optional] |
| **tags** | **Hash&lt;String, String&gt;** | Resource tags applied to the publicIP address created by this PublicIPAddressConfiguration | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::VirtualMachineScaleSetUpdatePublicIPAddressConfiguration.new(
  name: null,
  properties: null,
  tags: null
)
```

