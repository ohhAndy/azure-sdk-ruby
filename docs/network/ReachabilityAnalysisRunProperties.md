# AzureRest::ReachabilityAnalysisRunProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **description** | **String** |  | [optional] |
| **intent_id** | **String** | Id of the intent resource to run analysis on. |  |
| **intent_content** | [**IntentContent**](IntentContent.md) |  | [optional] |
| **analysis_result** | **String** |  | [optional][readonly] |
| **error_message** | **String** |  | [optional][readonly] |
| **provisioning_state** | [**ProvisioningState**](ProvisioningState.md) |  | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::ReachabilityAnalysisRunProperties.new(
  description: null,
  intent_id: null,
  intent_content: null,
  analysis_result: null,
  error_message: null,
  provisioning_state: null
)
```

