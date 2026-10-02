# AzureSDK::VaultCreateOrUpdateParameters

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **location** | **String** | The supported Azure location where the key vault should be created. |  |
| **tags** | **Hash&lt;String, String&gt;** | The tags that will be assigned to the key vault. | [optional] |
| **properties** | [**VaultProperties**](VaultProperties.md) |  |  |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::VaultCreateOrUpdateParameters.new(
  location: null,
  tags: null,
  properties: null
)
```

