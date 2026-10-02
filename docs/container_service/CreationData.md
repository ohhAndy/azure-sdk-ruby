# AzureSDK::CreationData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **source_resource_id** | **String** | This is the ARM ID of the source object to be used to create the target object. | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::CreationData.new(
  source_resource_id: null
)
```

