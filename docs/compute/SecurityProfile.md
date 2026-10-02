# AzureSDK::SecurityProfile

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **uefi_settings** | [**UefiSettings**](UefiSettings.md) |  | [optional] |
| **encryption_at_host** | **Boolean** | This property can be used by user in the request to enable or disable the Host Encryption for the virtual machine or virtual machine scale set. This will enable the encryption for all the disks including Resource/Temp disk at host itself. The default behavior is: The Encryption at host will be disabled unless this property is set to true for the resource. | [optional] |
| **security_type** | [**SecurityTypes**](SecurityTypes.md) |  | [optional] |
| **encryption_identity** | [**EncryptionIdentity**](EncryptionIdentity.md) |  | [optional] |
| **proxy_agent_settings** | [**ProxyAgentSettings**](ProxyAgentSettings.md) |  | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::SecurityProfile.new(
  uefi_settings: null,
  encryption_at_host: null,
  security_type: null,
  encryption_identity: null,
  proxy_agent_settings: null
)
```

