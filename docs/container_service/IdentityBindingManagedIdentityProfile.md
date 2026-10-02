# AzureSDK::IdentityBindingManagedIdentityProfile

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **resource_id** | **String** | The resource ID of the managed identity. |  |
| **object_id** | **String** | The object ID of the managed identity. | [optional][readonly] |
| **client_id** | **String** | The client ID of the managed identity. | [optional][readonly] |
| **tenant_id** | **String** | The tenant ID of the managed identity. | [optional][readonly] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::IdentityBindingManagedIdentityProfile.new(
  resource_id: null,
  object_id: null,
  client_id: null,
  tenant_id: null
)
```

