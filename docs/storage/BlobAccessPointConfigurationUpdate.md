# AzureRest::BlobAccessPointConfigurationUpdate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tags** | **Hash&lt;String, String&gt;** | Resource tags. | [optional] |
| **properties** | [**BlobAccessPointConfigurationPropertiesUpdate**](BlobAccessPointConfigurationPropertiesUpdate.md) |  | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::BlobAccessPointConfigurationUpdate.new(
  tags: null,
  properties: null
)
```

