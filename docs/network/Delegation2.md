# AzureSDK::Delegation2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Resource ID. | [optional] |
| **properties** | [**ServiceDelegationPropertiesFormat2**](ServiceDelegationPropertiesFormat2.md) |  | [optional] |
| **name** | **String** | The name of the resource that is unique within a subnet. This name can be used to access the resource. | [optional] |
| **etag** | **String** | A unique read-only string that changes whenever the resource is updated. | [optional][readonly] |
| **type** | **String** | Resource type. | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::Delegation2.new(
  id: null,
  properties: null,
  name: null,
  etag: null,
  type: null
)
```

