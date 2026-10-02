# AzureSDK::RunCommandManagedIdentity

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **client_id** | **String** | Client Id (GUID value) of the user-assigned managed identity. ObjectId should not be used if this is provided. | [optional] |
| **object_id** | **String** | Object Id (GUID value) of the user-assigned managed identity. ClientId should not be used if this is provided. | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::RunCommandManagedIdentity.new(
  client_id: null,
  object_id: null
)
```

