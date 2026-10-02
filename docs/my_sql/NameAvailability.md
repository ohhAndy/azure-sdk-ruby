# AzureSDK::NameAvailability

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **message** | **String** | Error Message. | [optional] |
| **name_available** | **Boolean** | Indicates whether the resource name is available. | [optional] |
| **reason** | **String** | Reason for name being unavailable. | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::NameAvailability.new(
  message: null,
  name_available: null,
  reason: null
)
```

