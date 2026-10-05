# AzureRest::PublicIPAddress

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Resource ID. | [optional] |
| **name** | **String** | Resource name. | [optional][readonly] |
| **type** | **String** | Resource type. | [optional][readonly] |
| **location** | **String** | Resource location. | [optional] |
| **tags** | **Hash&lt;String, String&gt;** | Resource tags. | [optional] |
| **properties** | [**PublicIPAddressPropertiesFormat**](PublicIPAddressPropertiesFormat.md) |  | [optional] |
| **extended_location** | [**ExtendedLocation**](ExtendedLocation.md) |  | [optional] |
| **sku** | [**PublicIPAddressSku**](PublicIPAddressSku.md) |  | [optional] |
| **etag** | **String** | A unique read-only string that changes whenever the resource is updated. | [optional][readonly] |
| **zones** | **Array&lt;String&gt;** | A list of availability zones denoting the IP allocated for the resource needs to come from. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::PublicIPAddress.new(
  id: null,
  name: null,
  type: null,
  location: null,
  tags: null,
  properties: null,
  extended_location: null,
  sku: null,
  etag: null,
  zones: null
)
```

