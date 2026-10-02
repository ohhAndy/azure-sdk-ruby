# AzureSDK::SecretCreateOrUpdateParameters

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tags** | **Hash&lt;String, String&gt;** | The tags that will be assigned to the secret. | [optional] |
| **properties** | [**SecretProperties**](SecretProperties.md) |  |  |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::SecretCreateOrUpdateParameters.new(
  tags: null,
  properties: null
)
```

