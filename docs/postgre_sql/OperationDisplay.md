# AzureSDK::OperationDisplay

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **provider** | **String** | Name of the resource provider. | [optional][readonly] |
| **resource** | **String** | Type of resource on which the operation is performed. | [optional][readonly] |
| **operation** | **String** | Name of the operation. | [optional][readonly] |
| **description** | **String** | Description of the operation. | [optional][readonly] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::OperationDisplay.new(
  provider: null,
  resource: null,
  operation: null,
  description: null
)
```

