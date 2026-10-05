# AzureRest::FrontendIPConfiguration

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Resource ID. | [optional] |
| **name** | **String** | Name of the resource. | [optional] |
| **type** | **String** | Resource type. | [optional][readonly] |
| **properties** | [**FrontendIPConfigurationPropertiesFormat**](FrontendIPConfigurationPropertiesFormat.md) |  | [optional] |
| **etag** | **String** | A unique read-only string that changes whenever the resource is updated. | [optional][readonly] |
| **zones** | **Array&lt;String&gt;** | A list of availability zones denoting the IP allocated for the resource needs to come from. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::FrontendIPConfiguration.new(
  id: null,
  name: null,
  type: null,
  properties: null,
  etag: null,
  zones: null
)
```

