# AzureRest::WinRMConfiguration

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **listeners** | [**Array&lt;WinRMListener&gt;**](WinRMListener.md) | The list of Windows Remote Management listeners | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::WinRMConfiguration.new(
  listeners: null
)
```

