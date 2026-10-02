# AzureSDK::SshPublicKeyGenerateKeyPairResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **private_key** | **String** | Private key portion of the key pair used to authenticate to a virtual machine through ssh. The private key is returned in RFC3447 format and should be treated as a secret. |  |
| **public_key** | **String** | Public key portion of the key pair used to authenticate to a virtual machine through ssh. The public key is in ssh-rsa format. |  |
| **id** | **String** | The ARM resource id in the form of /subscriptions/{SubscriptionId}/resourceGroups/{ResourceGroupName}/providers/Microsoft.Compute/sshPublicKeys/{SshPublicKeyName} |  |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::SshPublicKeyGenerateKeyPairResult.new(
  private_key: null,
  public_key: null,
  id: null
)
```

