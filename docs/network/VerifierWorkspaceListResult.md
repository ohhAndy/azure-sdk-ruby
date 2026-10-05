# AzureRest::VerifierWorkspaceListResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | [**Array&lt;VerifierWorkspace&gt;**](VerifierWorkspace.md) | The VerifierWorkspace items on this page |  |
| **next_link** | **String** | The link to the next page of items | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::VerifierWorkspaceListResult.new(
  value: null,
  next_link: null
)
```

