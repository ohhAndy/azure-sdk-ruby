# AzureRest::ResourceGroupExportResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **template** | **Object** | The template content. Used if outputFormat is empty or set to &#39;Json&#39;. | [optional] |
| **output** | **String** | The formatted export content. Used if outputFormat is set to &#39;Bicep&#39;. | [optional] |
| **error** | [**ErrorDetail**](ErrorDetail.md) |  | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::ResourceGroupExportResult.new(
  template: null,
  output: null,
  error: null
)
```

