# AzureSDK::RunCommandDocumentBase

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **schema** | **String** | The VM run command schema. |  |
| **id** | **String** | The VM run command id. |  |
| **os_type** | [**CommonOperatingSystemTypes**](CommonOperatingSystemTypes.md) |  |  |
| **label** | **String** | The VM run command label. |  |
| **description** | **String** | The VM run command description. |  |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::RunCommandDocumentBase.new(
  schema: null,
  id: null,
  os_type: null,
  label: null,
  description: null
)
```

