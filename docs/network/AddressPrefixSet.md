# AzureRest::AddressPrefixSet

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Resource ID. | [optional] |
| **name** | **String** | Resource name. | [optional][readonly] |
| **type** | **String** | Resource type. | [optional][readonly] |
| **etag** | **String** | A unique read-only string that changes whenever the resource is updated. | [optional][readonly] |
| **properties** | [**AddressPrefixSetPropertiesFormat**](AddressPrefixSetPropertiesFormat.md) |  | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::AddressPrefixSet.new(
  id: null,
  name: null,
  type: null,
  etag: null,
  properties: null
)
```

