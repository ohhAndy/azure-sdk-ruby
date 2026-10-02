# AzureSDK::ManagedHsmKeyCreateParameters

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tags** | **Hash&lt;String, String&gt;** | The tags that will be assigned to the key. | [optional] |
| **properties** | [**ManagedHsmKeyProperties**](ManagedHsmKeyProperties.md) |  |  |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::ManagedHsmKeyCreateParameters.new(
  tags: null,
  properties: null
)
```

