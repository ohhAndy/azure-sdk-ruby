# AzureRest::RunCommandResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The command id. | [optional][readonly] |
| **properties** | [**CommandResultProperties**](CommandResultProperties.md) |  | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::RunCommandResult.new(
  id: null,
  properties: null
)
```

