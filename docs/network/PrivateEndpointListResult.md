# AzureRest::PrivateEndpointListResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | [**Array&lt;PrivateEndpoint&gt;**](PrivateEndpoint.md) | The PrivateEndpoint items on this page |  |
| **next_link** | **String** | The link to the next page of items | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::PrivateEndpointListResult.new(
  value: null,
  next_link: null
)
```

