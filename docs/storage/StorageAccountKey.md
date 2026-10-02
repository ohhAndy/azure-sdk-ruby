# AzureSDK::StorageAccountKey

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key_name** | **String** | Name of the key. | [optional][readonly] |
| **value** | **String** | Base 64-encoded value of the key. | [optional][readonly] |
| **permissions** | [**KeyPermission**](KeyPermission.md) |  | [optional] |
| **creation_time** | **Time** | Creation time of the key, in round trip date format. | [optional][readonly] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::StorageAccountKey.new(
  key_name: null,
  value: null,
  permissions: null,
  creation_time: null
)
```

