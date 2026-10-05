# AzureRest::BlobRestoreRange

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_range** | **String** | Blob start range. This is inclusive. Empty means account start. |  |
| **end_range** | **String** | Blob end range. This is exclusive. Empty means account end. |  |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::BlobRestoreRange.new(
  start_range: null,
  end_range: null
)
```

