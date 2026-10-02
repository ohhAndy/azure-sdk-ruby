# AzureSDK::OperationListResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | [**Array&lt;OperationValue&gt;**](OperationValue.md) | The list of operations |  |
| **next_link** | **String** | The link to the next page of items | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::OperationListResult.new(
  value: null,
  next_link: null
)
```

