# AzureRest::ResourceBasics

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **resource_id** | **String** | ResourceId of the Azure resource. | [optional] |
| **address_prefixes** | **Array&lt;String&gt;** | List of IP address prefixes of the resource. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::ResourceBasics.new(
  resource_id: null,
  address_prefixes: null
)
```

