# AzureRest::EndpointDependency

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **domain_name** | **String** | The domain name of the dependency. | [optional] |
| **endpoint_details** | [**Array&lt;EndpointDetail&gt;**](EndpointDetail.md) | The Ports and Protocols used when connecting to domainName. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::EndpointDependency.new(
  domain_name: null,
  endpoint_details: null
)
```

