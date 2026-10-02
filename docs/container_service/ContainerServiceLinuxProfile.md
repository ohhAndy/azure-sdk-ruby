# AzureSDK::ContainerServiceLinuxProfile

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **admin_username** | **String** | The administrator username to use for Linux VMs. |  |
| **ssh** | [**ContainerServiceSshConfiguration**](ContainerServiceSshConfiguration.md) |  |  |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::ContainerServiceLinuxProfile.new(
  admin_username: null,
  ssh: null
)
```

