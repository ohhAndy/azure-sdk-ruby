# AzureSDK::LocalUserRegeneratePasswordResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ssh_password** | **String** | Auto generated password by the server for SSH authentication if hasSshPassword is set to true on the creation of local user. | [optional][readonly] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::LocalUserRegeneratePasswordResult.new(
  ssh_password: null
)
```

