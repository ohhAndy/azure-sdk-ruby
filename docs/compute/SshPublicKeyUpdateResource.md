# AzureRest::SshPublicKeyUpdateResource

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tags** | **Hash&lt;String, String&gt;** | Resource tags | [optional] |
| **properties** | [**SshPublicKeyResourceProperties**](SshPublicKeyResourceProperties.md) |  | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::SshPublicKeyUpdateResource.new(
  tags: null,
  properties: null
)
```

