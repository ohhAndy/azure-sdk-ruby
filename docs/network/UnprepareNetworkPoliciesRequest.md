# AzureRest::UnprepareNetworkPoliciesRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_name** | **String** | The name of the service for which subnet is being unprepared for. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::UnprepareNetworkPoliciesRequest.new(
  service_name: null
)
```

