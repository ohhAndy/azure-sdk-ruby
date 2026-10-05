# AzureRest::LinuxConfiguration

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **disable_password_authentication** | **Boolean** | Specifies whether password authentication should be disabled. | [optional] |
| **ssh** | [**SshConfiguration**](SshConfiguration.md) |  | [optional] |
| **provision_vm_agent** | **Boolean** | Indicates whether virtual machine agent should be provisioned on the virtual machine. When this property is not specified in the request body, default behavior is to set it to true. This will ensure that VM Agent is installed on the VM so that extensions can be added to the VM later. | [optional] |
| **patch_settings** | [**LinuxPatchSettings**](LinuxPatchSettings.md) |  | [optional] |
| **enable_vm_agent_platform_updates** | **Boolean** | Indicates whether VMAgent Platform Updates is enabled for the Linux virtual machine. Default value is false. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::LinuxConfiguration.new(
  disable_password_authentication: null,
  ssh: null,
  provision_vm_agent: null,
  patch_settings: null,
  enable_vm_agent_platform_updates: null
)
```

