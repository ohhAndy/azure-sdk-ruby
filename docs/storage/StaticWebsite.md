# AzureRest::StaticWebsite

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **enabled** | **Boolean** | Indicates whether static website support is enabled for the specified account. |  |
| **index_document** | **String** | The webpage that Azure Storage serves for requests to the root of a website or any subfolder (for example, index.html). The value is case-sensitive. | [optional] |
| **default_index_document_path** | **String** | The absolute path where the default index file is present. This absolute path is mutually exclusive to \&quot;indexDocument\&quot; and it is case-sensitive. | [optional] |
| **error_document404_path** | **String** | The absolute path to a webpage that Azure Storage serves for requests that don&#39;t correspond to an existing file. The contents of the page are returned with HTTP 404 Not Found. Only a single custom 404 page is supported in each static website. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::StaticWebsite.new(
  enabled: null,
  index_document: null,
  default_index_document_path: null,
  error_document404_path: null
)
```

