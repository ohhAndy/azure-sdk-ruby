# AzureSDK::VirtualApplianceIPConfiguration

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | For hub NVAs, primary IP configs must be named &#39;privatenicipconfig&#39; and &#39;publicnicipconfig&#39;, with non-primary configs using these prefixes; no naming restrictions apply for NVAs in VNets. Maximum 80 character are allowed. | [optional] |
| **properties** | [**VirtualApplianceIPConfigurationProperties**](VirtualApplianceIPConfigurationProperties.md) |  | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::VirtualApplianceIPConfiguration.new(
  name: null,
  properties: null
)
```

