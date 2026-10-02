# AzureSDK::AgentPoolSecurityProfile

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **enable_vtpm** | **Boolean** | vTPM is a Trusted Launch feature for configuring a dedicated secure vault for keys and measurements held locally on the node. For more details, see aka.ms/aks/trustedlaunch. If not specified, the default is false. | [optional] |
| **enable_secure_boot** | **Boolean** | Secure Boot is a feature of Trusted Launch which ensures that only signed operating systems and drivers can boot. For more details, see aka.ms/aks/trustedlaunch.  If not specified, the default is false. | [optional] |
| **ssh_access** | [**AgentPoolSSHAccess**](AgentPoolSSHAccess.md) |  | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::AgentPoolSecurityProfile.new(
  enable_vtpm: null,
  enable_secure_boot: null,
  ssh_access: null
)
```

