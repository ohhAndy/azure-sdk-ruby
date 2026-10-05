# AzureRest::PrivateEndpointConnectionList

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | [**Array&lt;PrivateEndpointConnection&gt;**](PrivateEndpointConnection.md) | The PrivateEndpointConnection items on this page | [readonly] |
| **next_link** | **String** | The link to the next page of items | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::PrivateEndpointConnectionList.new(
  value: null,
  next_link: null
)
```

