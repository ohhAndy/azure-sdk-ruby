# AzureSDK::ResourcesMoveInfo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **resources** | **Array&lt;String&gt;** | The IDs of the resources. | [optional] |
| **target_resource_group** | **String** | The target resource group. | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::ResourcesMoveInfo.new(
  resources: null,
  target_resource_group: null
)
```

