# AzureRest::AdminCredentialsForPatch

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **source_server_password** | **String** | Password for the user of the source server. | [optional] |
| **target_server_password** | **String** | Password for the user of the target server. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::AdminCredentialsForPatch.new(
  source_server_password: null,
  target_server_password: null
)
```

