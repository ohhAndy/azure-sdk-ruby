# AzureRest::RuntimeScriptAction

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name of the script action. |  |
| **uri** | **String** | The URI to the script. |  |
| **parameters** | **String** | The parameters for the script | [optional] |
| **roles** | **Array&lt;String&gt;** | The list of roles where script will be executed. |  |
| **application_name** | **String** | The application name of the script action, if any. | [optional][readonly] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::RuntimeScriptAction.new(
  name: null,
  uri: null,
  parameters: null,
  roles: null,
  application_name: null
)
```

