# AzureRest::PrivateDnsZoneGroup

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Resource ID. | [optional] |
| **name** | **String** | Name of the resource that is unique within a resource group. This name can be used to access the resource. | [optional] |
| **etag** | **String** | A unique read-only string that changes whenever the resource is updated. | [optional][readonly] |
| **properties** | [**PrivateDnsZoneGroupPropertiesFormat**](PrivateDnsZoneGroupPropertiesFormat.md) |  | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::PrivateDnsZoneGroup.new(
  id: null,
  name: null,
  etag: null,
  properties: null
)
```

