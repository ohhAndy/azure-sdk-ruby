# AzureRest::ServerUpdate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **identity** | [**ResourceIdentity**](ResourceIdentity.md) |  | [optional] |
| **properties** | [**ServerProperties**](ServerProperties.md) |  | [optional] |
| **tags** | **Hash&lt;String, String&gt;** | Resource tags. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::ServerUpdate.new(
  identity: null,
  properties: null,
  tags: null
)
```

