# AzureSDK::Permissions

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **keys** | [**Array&lt;KeyPermissions&gt;**](KeyPermissions.md) | Permissions to keys | [optional] |
| **secrets** | [**Array&lt;SecretPermissions&gt;**](SecretPermissions.md) | Permissions to secrets | [optional] |
| **certificates** | [**Array&lt;CertificatePermissions&gt;**](CertificatePermissions.md) | Permissions to certificates | [optional] |
| **storage** | [**Array&lt;StoragePermissions&gt;**](StoragePermissions.md) | Permissions to storage accounts | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::Permissions.new(
  keys: null,
  secrets: null,
  certificates: null,
  storage: null
)
```

