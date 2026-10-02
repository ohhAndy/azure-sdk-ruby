# AzureSDK::AdminCredentials

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **source_server_password** | **String** | Password for the user of the source server. |  |
| **target_server_password** | **String** | Password for the user of the target server. |  |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::AdminCredentials.new(
  source_server_password: null,
  target_server_password: null
)
```

