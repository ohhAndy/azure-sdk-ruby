# AzureRest::PrivateEndpointConnectionListResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | [**Array&lt;PrivateEndpointConnection&gt;**](PrivateEndpointConnection.md) | Array of private endpoint connections | [optional] |
| **next_link** | **String** |  | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::PrivateEndpointConnectionListResult.new(
  value: null,
  next_link: null
)
```

