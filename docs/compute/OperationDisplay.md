# AzureSDK::OperationDisplay

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **provider** | **String** | The localized friendly form of the resource provider name, e.g. \&quot;Microsoft Monitoring Insights\&quot; or \&quot;Microsoft Compute\&quot;. | [optional][readonly] |
| **resource** | **String** | The localized friendly name of the resource type related to this operation. E.g. \&quot;Virtual Machines\&quot; or \&quot;Job Schedule Collections\&quot;. | [optional][readonly] |
| **operation** | **String** | The concise, localized friendly name for the operation; suitable for dropdowns. E.g. \&quot;Create or Update Virtual Machine\&quot;, \&quot;Restart Virtual Machine\&quot;. | [optional][readonly] |
| **description** | **String** | The short, localized friendly description of the operation; suitable for tool tips and detailed views. | [optional][readonly] |

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

