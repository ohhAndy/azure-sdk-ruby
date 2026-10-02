# AzureSDK::ContextCacheUpdate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tags** | **Hash&lt;String, String&gt;** | Resource tags. | [optional] |
| **identity** | [**ManagedServiceIdentity**](ManagedServiceIdentity.md) |  | [optional] |
| **properties** | [**ContextCachePropertiesUpdate**](ContextCachePropertiesUpdate.md) |  | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::ContextCacheUpdate.new(
  tags: null,
  identity: null,
  properties: null
)
```

