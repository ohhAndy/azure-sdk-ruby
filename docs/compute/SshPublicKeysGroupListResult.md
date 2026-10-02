# AzureSDK::SshPublicKeysGroupListResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | [**Array&lt;SshPublicKeyResource&gt;**](SshPublicKeyResource.md) | The list of SSH public keys. |  |
| **next_link** | **String** | The URI to fetch the next page of SSH public keys. Call ListNext() with this URI to fetch the next page of SSH public keys. | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::SshPublicKeysGroupListResult.new(
  value: null,
  next_link: null
)
```

