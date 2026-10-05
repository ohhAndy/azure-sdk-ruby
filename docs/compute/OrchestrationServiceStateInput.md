# AzureRest::OrchestrationServiceStateInput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_name** | [**OrchestrationServiceNames**](OrchestrationServiceNames.md) |  |  |
| **action** | [**OrchestrationServiceStateAction**](OrchestrationServiceStateAction.md) |  |  |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::OrchestrationServiceStateInput.new(
  service_name: null,
  action: null
)
```

