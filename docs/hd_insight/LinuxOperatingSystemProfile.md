# AzureSDK::LinuxOperatingSystemProfile

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **username** | **String** | The username. | [optional] |
| **password** | **String** | The password. | [optional] |
| **ssh_profile** | [**SshProfile**](SshProfile.md) |  | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::LinuxOperatingSystemProfile.new(
  username: null,
  password: null,
  ssh_profile: null
)
```

