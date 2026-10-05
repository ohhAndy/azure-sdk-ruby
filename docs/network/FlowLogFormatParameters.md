# AzureRest::FlowLogFormatParameters

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | [**FlowLogFormatType**](FlowLogFormatType.md) |  | [optional] |
| **version** | **Integer** | The version (revision) of the flow log. | [optional][default to 0] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::FlowLogFormatParameters.new(
  type: null,
  version: null
)
```

