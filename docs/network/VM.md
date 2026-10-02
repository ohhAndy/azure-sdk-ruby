# AzureSDK::VM

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Resource ID. | [optional] |
| **name** | **String** | Resource name. | [optional][readonly] |
| **type** | **String** | Resource type. | [optional][readonly] |
| **location** | **String** | Resource location. | [optional] |
| **tags** | **Hash&lt;String, String&gt;** | Resource tags. | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::VM.new(
  id: null,
  name: null,
  type: null,
  location: null,
  tags: null
)
```

