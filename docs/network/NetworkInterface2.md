# AzureRest::NetworkInterface2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Resource ID. | [optional] |
| **name** | **String** | Resource name. | [optional][readonly] |
| **type** | **String** | Resource type. | [optional][readonly] |
| **location** | **String** | Resource location. | [optional] |
| **tags** | **Hash&lt;String, String&gt;** | Resource tags. | [optional] |
| **properties** | [**NetworkInterfacePropertiesFormat2**](NetworkInterfacePropertiesFormat2.md) |  | [optional] |
| **extended_location** | [**ExtendedLocation**](ExtendedLocation.md) |  | [optional] |
| **etag** | **String** | A unique read-only string that changes whenever the resource is updated. | [optional][readonly] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::NetworkInterface2.new(
  id: null,
  name: null,
  type: null,
  location: null,
  tags: null,
  properties: null,
  extended_location: null,
  etag: null
)
```

