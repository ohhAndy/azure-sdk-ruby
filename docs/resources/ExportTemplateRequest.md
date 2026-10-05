# AzureRest::ExportTemplateRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **resources** | **Array&lt;String&gt;** | The IDs of the resources to filter the export by. To export all resources, supply an array with single entry &#39;*&#39;. | [optional] |
| **options** | **String** | The export template options. A CSV-formatted list containing zero or more of the following: &#39;IncludeParameterDefaultValue&#39;, &#39;IncludeComments&#39;, &#39;SkipResourceNameParameterization&#39;, &#39;SkipAllParameterization&#39; | [optional] |
| **output_format** | [**ExportTemplateOutputFormat**](ExportTemplateOutputFormat.md) |  | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::ExportTemplateRequest.new(
  resources: null,
  options: null,
  output_format: null
)
```

