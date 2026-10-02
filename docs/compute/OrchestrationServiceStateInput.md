# AzureSDK::OrchestrationServiceStateInput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_name** | [**OrchestrationServiceNames**](OrchestrationServiceNames.md) |  |  |
| **action** | [**OrchestrationServiceStateAction**](OrchestrationServiceStateAction.md) |  |  |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::OrchestrationServiceStateInput.new(
  service_name: null,
  action: null
)
```

