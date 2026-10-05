# AzureRest::IPConfigurationProfile2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Resource ID. | [optional] |
| **properties** | [**IPConfigurationProfilePropertiesFormat2**](IPConfigurationProfilePropertiesFormat2.md) |  | [optional] |
| **name** | **String** | The name of the resource. This name can be used to access the resource. | [optional] |
| **type** | **String** | Sub Resource type. | [optional][readonly] |
| **etag** | **String** | A unique read-only string that changes whenever the resource is updated. | [optional][readonly] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::IPConfigurationProfile2.new(
  id: null,
  properties: null,
  name: null,
  type: null,
  etag: null
)
```

