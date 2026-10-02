# AzureSDK::VirtualMachineScaleSetPublicIPAddressConfiguration

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The publicIP address configuration name. |  |
| **properties** | [**VirtualMachineScaleSetPublicIPAddressConfigurationProperties**](VirtualMachineScaleSetPublicIPAddressConfigurationProperties.md) |  | [optional] |
| **sku** | [**PublicIPAddressSku**](PublicIPAddressSku.md) |  | [optional] |
| **tags** | **Hash&lt;String, String&gt;** | Resource tags applied to the publicIP address created by this PublicIPAddressConfiguration | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::VirtualMachineScaleSetPublicIPAddressConfiguration.new(
  name: null,
  properties: null,
  sku: null,
  tags: null
)
```

