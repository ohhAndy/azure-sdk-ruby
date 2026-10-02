# AzureSDK::VirtualMachineRunCommandScriptSource

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **script** | **String** | Specifies the script content to be executed on the VM. | [optional] |
| **script_uri** | **String** | Specifies the script download location. It can be either SAS URI of an Azure storage blob with read access or public URI. | [optional] |
| **command_id** | **String** | Specifies a commandId of predefined built-in script. Command IDs available for Linux are listed at https://aka.ms/RunCommandManagedLinux#available-commands, Windows at https://aka.ms/RunCommandManagedWindows#available-commands. | [optional] |
| **script_uri_managed_identity** | [**RunCommandManagedIdentity**](RunCommandManagedIdentity.md) |  | [optional] |
| **script_shell** | [**ScriptShellTypes**](ScriptShellTypes.md) |  | [optional] |
| **gallery_script_reference_id** | **String** | The resource ID of a Gallery Script version that needs to be executed. Example ID looks like /subscriptions/{subId}/resourceGroups/{rgName}/providers/Microsoft.Compute/galleries/{galleryName}/scripts/{scriptName}/versions/{version}. | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::VirtualMachineRunCommandScriptSource.new(
  script: null,
  script_uri: null,
  command_id: null,
  script_uri_managed_identity: null,
  script_shell: null,
  gallery_script_reference_id: null
)
```

