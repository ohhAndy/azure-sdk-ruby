# AzureSDK::BastionHostUpdate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **identity** | [**ManagedServiceIdentity**](ManagedServiceIdentity.md) |  | [optional] |
| **tags** | **Hash&lt;String, String&gt;** | Resource tags. | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::BastionHostUpdate.new(
  identity: null,
  tags: null
)
```

