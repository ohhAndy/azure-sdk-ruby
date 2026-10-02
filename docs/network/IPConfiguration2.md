# AzureSDK::IPConfiguration2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Resource ID. | [optional] |
| **properties** | [**IPConfigurationPropertiesFormat2**](IPConfigurationPropertiesFormat2.md) |  | [optional] |
| **name** | **String** | The name of the resource that is unique within a resource group. This name can be used to access the resource. | [optional] |
| **etag** | **String** | A unique read-only string that changes whenever the resource is updated. | [optional][readonly] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::IPConfiguration2.new(
  id: null,
  properties: null,
  name: null,
  etag: null
)
```

