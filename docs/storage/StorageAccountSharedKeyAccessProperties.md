# AzureRest::StorageAccountSharedKeyAccessProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **blob** | [**ServiceSharedKeyAccessProperties**](ServiceSharedKeyAccessProperties.md) |  | [optional] |
| **file** | [**ServiceSharedKeyAccessProperties**](ServiceSharedKeyAccessProperties.md) |  | [optional] |
| **table** | [**ServiceSharedKeyAccessProperties**](ServiceSharedKeyAccessProperties.md) |  | [optional] |
| **queue** | [**ServiceSharedKeyAccessProperties**](ServiceSharedKeyAccessProperties.md) |  | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::StorageAccountSharedKeyAccessProperties.new(
  blob: null,
  file: null,
  table: null,
  queue: null
)
```

