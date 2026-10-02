# AzureSDK::ExecuteScriptActionParameters

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **script_actions** | [**Array&lt;RuntimeScriptAction&gt;**](RuntimeScriptAction.md) | The list of run time script actions. | [optional] |
| **persist_on_success** | **Boolean** | Gets or sets if the scripts needs to be persisted. |  |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::ExecuteScriptActionParameters.new(
  script_actions: null,
  persist_on_success: null
)
```

