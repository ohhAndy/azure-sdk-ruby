# AzureSDK::CheckNameAvailabilityRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name of the resource for which availability needs to be checked. | [optional] |
| **type** | **String** | The resource type. | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::CheckNameAvailabilityRequest.new(
  name: null,
  type: null
)
```

