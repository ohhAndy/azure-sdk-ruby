# AzureRest::Subnet2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Resource ID. | [optional] |
| **name** | **String** | Name of the resource. | [optional] |
| **type** | **String** | Resource type. | [optional][readonly] |
| **properties** | [**SubnetPropertiesFormat2**](SubnetPropertiesFormat2.md) |  | [optional] |
| **etag** | **String** | A unique read-only string that changes whenever the resource is updated. | [optional][readonly] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::Subnet2.new(
  id: null,
  name: null,
  type: null,
  properties: null,
  etag: null
)
```

