# AzureSDK::TagFilter

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | This is the filter tag name, it can have 1 - 128 characters |  |
| **op** | **String** | This is the comparison operator which is used for object comparison and filtering. Only &#x3D;&#x3D; (equality operator) is currently supported |  |
| **value** | **String** | This is the filter tag value field used for tag based filtering, it can have 0 - 256 characters |  |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::TagFilter.new(
  name: null,
  op: null,
  value: null
)
```

