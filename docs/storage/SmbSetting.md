# AzureSDK::SmbSetting

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **multichannel** | [**Multichannel**](Multichannel.md) |  | [optional] |
| **versions** | **String** | SMB protocol versions supported by server. Valid values are SMB2.1, SMB3.0, SMB3.1.1. Should be passed as a string with delimiter &#39;;&#39;. | [optional] |
| **authentication_methods** | **String** | SMB authentication methods supported by server. Valid values are NTLMv2, Kerberos. Should be passed as a string with delimiter &#39;;&#39;. | [optional] |
| **kerberos_ticket_encryption** | **String** | Kerberos ticket encryption supported by server. Valid values are RC4-HMAC, AES-256. Should be passed as a string with delimiter &#39;;&#39; | [optional] |
| **channel_encryption** | **String** | SMB channel encryption supported by server. Valid values are AES-128-CCM, AES-128-GCM, AES-256-GCM. Should be passed as a string with delimiter &#39;;&#39;. | [optional] |
| **encryption_in_transit** | [**EncryptionInTransit**](EncryptionInTransit.md) |  | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::SmbSetting.new(
  multichannel: null,
  versions: null,
  authentication_methods: null,
  kerberos_ticket_encryption: null,
  channel_encryption: null,
  encryption_in_transit: null
)
```

