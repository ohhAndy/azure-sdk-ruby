# AzureRest::SshProfile

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **public_keys** | [**Array&lt;SshPublicKey&gt;**](SshPublicKey.md) | The list of SSH public keys. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::SshProfile.new(
  public_keys: null
)
```

