# AzureSDK::ContextCacheCheckNameAvailabilityResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name_available** | **Boolean** | A boolean value that indicates whether the context cache name is available to use. If true, the name is available. If false, the name has already been taken or is invalid and cannot be used. | [readonly] |
| **reason** | [**ContextCacheCheckNameAvailabilityFailureReason**](ContextCacheCheckNameAvailabilityFailureReason.md) |  | [optional] |
| **message** | **String** | The error message providing additional information about the context cache name availability check failure. | [optional][readonly] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::ContextCacheCheckNameAvailabilityResult.new(
  name_available: null,
  reason: null,
  message: null
)
```

