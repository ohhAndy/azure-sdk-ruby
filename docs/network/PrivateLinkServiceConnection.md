# AzureRest::PrivateLinkServiceConnection

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Resource ID. | [optional] |
| **properties** | [**PrivateLinkServiceConnectionProperties**](PrivateLinkServiceConnectionProperties.md) |  | [optional] |
| **name** | **String** | The name of the resource that is unique within a resource group. This name can be used to access the resource. | [optional] |
| **type** | **String** | The resource type. | [optional][readonly] |
| **etag** | **String** | A unique read-only string that changes whenever the resource is updated. | [optional][readonly] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::PrivateLinkServiceConnection.new(
  id: null,
  properties: null,
  name: null,
  type: null,
  etag: null
)
```

