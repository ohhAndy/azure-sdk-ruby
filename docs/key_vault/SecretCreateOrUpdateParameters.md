# AzureRest::SecretCreateOrUpdateParameters

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tags** | **Hash&lt;String, String&gt;** | The tags that will be assigned to the secret. | [optional] |
| **properties** | [**SecretProperties**](SecretProperties.md) |  |  |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::SecretCreateOrUpdateParameters.new(
  tags: null,
  properties: null
)
```

