# AzureRest::EndpointServicesListResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | [**Array&lt;EndpointServiceResult&gt;**](EndpointServiceResult.md) | The EndpointServiceResult items on this page |  |
| **next_link** | **String** | The link to the next page of items | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::EndpointServicesListResult.new(
  value: null,
  next_link: null
)
```

