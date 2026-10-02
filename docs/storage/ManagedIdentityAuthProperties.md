# AzureSDK::ManagedIdentityAuthProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **identity_resource_id** | **String** | ARM ResourceId of the managed identity that should be used to authenticate to the backing data source. | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::ManagedIdentityAuthProperties.new(
  identity_resource_id: null
)
```

