# AzureSDK::RuntimeScriptActionDetail

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name of the script action. |  |
| **uri** | **String** | The URI to the script. |  |
| **parameters** | **String** | The parameters for the script | [optional] |
| **roles** | **Array&lt;String&gt;** | The list of roles where script will be executed. |  |
| **application_name** | **String** | The application name of the script action, if any. | [optional][readonly] |
| **script_execution_id** | **Integer** | The execution id of the script action. | [optional][readonly] |
| **start_time** | **String** | The start time of script action execution. | [optional][readonly] |
| **end_time** | **String** | The end time of script action execution. | [optional][readonly] |
| **status** | **String** | The current execution status of the script action. | [optional][readonly] |
| **operation** | **String** | The reason why the script action was executed. | [optional][readonly] |
| **execution_summary** | [**Array&lt;ScriptActionExecutionSummary&gt;**](ScriptActionExecutionSummary.md) | The summary of script action execution result. | [optional][readonly] |
| **debug_information** | **String** | The script action execution debug information. | [optional][readonly] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::RuntimeScriptActionDetail.new(
  name: null,
  uri: null,
  parameters: null,
  roles: null,
  application_name: null,
  script_execution_id: null,
  start_time: null,
  end_time: null,
  status: null,
  operation: null,
  execution_summary: null,
  debug_information: null
)
```

