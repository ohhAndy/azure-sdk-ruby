# AzureSDK::DdosCustomPolicy

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Resource ID. | [optional] |
| **name** | **String** | Resource name. | [optional][readonly] |
| **type** | **String** | Resource type. | [optional][readonly] |
| **location** | **String** | Resource location. | [optional] |
| **tags** | **Hash&lt;String, String&gt;** | Resource tags. | [optional] |
| **properties** | [**DdosCustomPolicyPropertiesFormat**](DdosCustomPolicyPropertiesFormat.md) |  | [optional] |
| **etag** | **String** | A unique read-only string that changes whenever the resource is updated. | [optional][readonly] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::DdosCustomPolicy.new(
  id: null,
  name: null,
  type: null,
  location: null,
  tags: null,
  properties: null,
  etag: null
)
```

