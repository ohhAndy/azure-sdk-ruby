# AzureRest::RunCommandInput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **command_id** | **String** | Specifies a commandId of predefined built-in script. Command IDs available for Linux are listed at https://aka.ms/RunCommandManagedLinux#available-commands, Windows at https://aka.ms/RunCommandManagedWindows#available-commands. |  |
| **script** | **Array&lt;String&gt;** | Optional. The script to be executed.  When this value is given, the given script will override the default script of the command. | [optional] |
| **parameters** | [**Array&lt;RunCommandInputParameter&gt;**](RunCommandInputParameter.md) | The run command parameters. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::RunCommandInput.new(
  command_id: null,
  script: null,
  parameters: null
)
```

