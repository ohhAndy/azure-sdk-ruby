# AzureRest::OutboundEnvironmentEndpointCollection

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | [**Array&lt;OutboundEnvironmentEndpoint&gt;**](OutboundEnvironmentEndpoint.md) | The OutboundEnvironmentEndpoint items on this page |  |
| **next_link** | **String** | The link to the next page of items | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::OutboundEnvironmentEndpointCollection.new(
  value: null,
  next_link: null
)
```

