# AzureRest::RunCommandDocument

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **schema** | **String** | The VM run command schema. |  |
| **id** | **String** | The VM run command id. |  |
| **os_type** | [**CommonOperatingSystemTypes**](CommonOperatingSystemTypes.md) |  |  |
| **label** | **String** | The VM run command label. |  |
| **description** | **String** | The VM run command description. |  |
| **script** | **Array&lt;String&gt;** | The script to be executed. |  |
| **parameters** | [**Array&lt;RunCommandParameterDefinition&gt;**](RunCommandParameterDefinition.md) | The parameters used by the script. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::RunCommandDocument.new(
  schema: null,
  id: null,
  os_type: null,
  label: null,
  description: null,
  script: null,
  parameters: null
)
```

