# AzureRest::ContainerNetworkInterfaceIpConfiguration

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **properties** | [**ContainerNetworkInterfaceIpConfigurationPropertiesFormat**](ContainerNetworkInterfaceIpConfigurationPropertiesFormat.md) |  | [optional] |
| **name** | **String** | The name of the resource. This name can be used to access the resource. | [optional] |
| **type** | **String** | Sub Resource type. | [optional][readonly] |
| **etag** | **String** | A unique read-only string that changes whenever the resource is updated. | [optional][readonly] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::ContainerNetworkInterfaceIpConfiguration.new(
  properties: null,
  name: null,
  type: null,
  etag: null
)
```

