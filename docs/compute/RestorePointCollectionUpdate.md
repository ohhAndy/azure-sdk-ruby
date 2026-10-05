# AzureRest::RestorePointCollectionUpdate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tags** | **Hash&lt;String, String&gt;** | Resource tags | [optional] |
| **properties** | [**RestorePointCollectionProperties**](RestorePointCollectionProperties.md) |  | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::RestorePointCollectionUpdate.new(
  tags: null,
  properties: null
)
```

