# AzureRest::VirtualMachineExtensionInstanceView

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The virtual machine extension name. | [optional] |
| **type** | **String** | Specifies the type of the extension; an example is \&quot;CustomScriptExtension\&quot;. | [optional] |
| **type_handler_version** | **String** | Specifies the Major.Minor.Patch.Hotfix version of the script handler. Azure platform will deliver the latest Patch.Hotfix version in the Major.Minor series. | [optional] |
| **substatuses** | [**Array&lt;InstanceViewStatus&gt;**](InstanceViewStatus.md) | The resource status information. | [optional] |
| **statuses** | [**Array&lt;InstanceViewStatus&gt;**](InstanceViewStatus.md) | The resource status information. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::VirtualMachineExtensionInstanceView.new(
  name: null,
  type: null,
  type_handler_version: null,
  substatuses: null,
  statuses: null
)
```

