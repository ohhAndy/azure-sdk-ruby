# AzureRest::BastionHostIPConfiguration

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Resource ID. | [optional] |
| **properties** | [**BastionHostIPConfigurationPropertiesFormat**](BastionHostIPConfigurationPropertiesFormat.md) |  | [optional] |
| **name** | **String** | Name of the resource that is unique within a resource group. This name can be used to access the resource. | [optional] |
| **etag** | **String** | A unique read-only string that changes whenever the resource is updated. | [optional][readonly] |
| **type** | **String** | Ip configuration type. | [optional][readonly] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::BastionHostIPConfiguration.new(
  id: null,
  properties: null,
  name: null,
  etag: null,
  type: null
)
```

