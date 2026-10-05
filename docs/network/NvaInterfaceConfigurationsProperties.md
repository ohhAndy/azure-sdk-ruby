# AzureRest::NvaInterfaceConfigurationsProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subnet** | [**NvaInVnetSubnetReferenceProperties**](NvaInVnetSubnetReferenceProperties.md) |  | [optional] |
| **type** | [**Array&lt;NvaNicType&gt;**](NvaNicType.md) | Specifies the NIC types for the NVA interface configuration. Allowed values: PrivateNic, PublicNic, AdditionalPrivateNic, AdditionalPublicNic. Only the combination of PrivateNic and PublicNic is currently supported. | [optional] |
| **name** | **String** | Specifies the name of the interface. Maximum length is 70 characters. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::NvaInterfaceConfigurationsProperties.new(
  subnet: null,
  type: null,
  name: null
)
```

