# AzureRest::RunCommandParameterDefinition

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The run command parameter name. |  |
| **type** | **String** | The run command parameter type. |  |
| **default_value** | **String** | The run command parameter default value. | [optional] |
| **required** | **Boolean** | The run command parameter required. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::RunCommandParameterDefinition.new(
  name: null,
  type: null,
  default_value: null,
  required: null
)
```

