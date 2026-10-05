# AzureRest::ManagedClusterServicePrincipalProfile

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **client_id** | **String** | The ID for the service principal. |  |
| **secret** | **String** | The secret password associated with the service principal in plain text. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::ManagedClusterServicePrincipalProfile.new(
  client_id: null,
  secret: null
)
```

