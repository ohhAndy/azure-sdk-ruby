# AzureRest::SshConfiguration

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **public_keys** | [**Array&lt;SshPublicKey&gt;**](SshPublicKey.md) | The list of SSH public keys used to authenticate with linux based VMs. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::SshConfiguration.new(
  public_keys: null
)
```

