# AzureSDK::VirtualMachineExtensionHandlerInstanceView

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | Specifies the type of the extension; an example is \&quot;CustomScriptExtension\&quot;. | [optional] |
| **type_handler_version** | **String** | Specifies the Major.Minor.Patch.Hotfix version of the script handler. Azure platform will deliver the latest Patch.Hotfix version in the Major.Minor series. | [optional] |
| **status** | [**InstanceViewStatus**](InstanceViewStatus.md) |  | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::VirtualMachineExtensionHandlerInstanceView.new(
  type: null,
  type_handler_version: null,
  status: null
)
```

