# AzureSDK::VirtualMachineScaleSetUpdatePublicIPAddressConfiguration

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The publicIP address configuration name. | [optional] |
| **properties** | [**VirtualMachineScaleSetUpdatePublicIPAddressConfigurationProperties**](VirtualMachineScaleSetUpdatePublicIPAddressConfigurationProperties.md) |  | [optional] |
| **tags** | **Hash&lt;String, String&gt;** | Resource tags applied to the publicIP address created by this PublicIPAddressConfiguration | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::VirtualMachineScaleSetUpdatePublicIPAddressConfiguration.new(
  name: null,
  properties: null,
  tags: null
)
```

