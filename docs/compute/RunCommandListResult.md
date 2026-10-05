# AzureRest::RunCommandListResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | [**Array&lt;RunCommandDocumentBase&gt;**](RunCommandDocumentBase.md) | The list of virtual machine run commands. |  |
| **next_link** | **String** | The uri to fetch the next page of run commands. Call ListNext() with this to fetch the next page of run commands. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::RunCommandListResult.new(
  value: null,
  next_link: null
)
```

