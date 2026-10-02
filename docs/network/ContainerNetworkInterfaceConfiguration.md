# AzureSDK::ContainerNetworkInterfaceConfiguration

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Resource ID. | [optional] |
| **properties** | [**ContainerNetworkInterfaceConfigurationPropertiesFormat**](ContainerNetworkInterfaceConfigurationPropertiesFormat.md) |  | [optional] |
| **name** | **String** | The name of the resource. This name can be used to access the resource. | [optional] |
| **type** | **String** | Sub Resource type. | [optional][readonly] |
| **etag** | **String** | A unique read-only string that changes whenever the resource is updated. | [optional][readonly] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::ContainerNetworkInterfaceConfiguration.new(
  id: null,
  properties: null,
  name: null,
  type: null,
  etag: null
)
```

