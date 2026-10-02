# AzureSDK::AccessPolicy

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_time** | **Time** | Start time of the access policy | [optional] |
| **expiry_time** | **Time** | Expiry time of the access policy | [optional] |
| **permission** | **String** | List of abbreviated permissions. | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::AccessPolicy.new(
  start_time: null,
  expiry_time: null,
  permission: null
)
```

