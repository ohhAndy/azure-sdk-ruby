# AzureSDK::FlowLogFormatParameters

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | [**FlowLogFormatType**](FlowLogFormatType.md) |  | [optional] |
| **version** | **Integer** | The version (revision) of the flow log. | [optional][default to 0] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::FlowLogFormatParameters.new(
  type: null,
  version: null
)
```

