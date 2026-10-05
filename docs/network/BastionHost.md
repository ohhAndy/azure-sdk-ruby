# AzureRest::BastionHost

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Resource ID. | [optional] |
| **name** | **String** | Resource name. | [optional][readonly] |
| **type** | **String** | Resource type. | [optional][readonly] |
| **location** | **String** | Resource location. | [optional] |
| **tags** | **Hash&lt;String, String&gt;** | Resource tags. | [optional] |
| **properties** | [**BastionHostPropertiesFormat**](BastionHostPropertiesFormat.md) |  | [optional] |
| **zones** | **Array&lt;String&gt;** | A list of availability zones denoting where the resource needs to come from. | [optional] |
| **etag** | **String** | A unique read-only string that changes whenever the resource is updated. | [optional][readonly] |
| **sku** | [**Sku**](Sku.md) |  | [optional] |
| **identity** | [**ManagedServiceIdentity**](ManagedServiceIdentity.md) |  | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::BastionHost.new(
  id: null,
  name: null,
  type: null,
  location: null,
  tags: null,
  properties: null,
  zones: null,
  etag: null,
  sku: null,
  identity: null
)
```

