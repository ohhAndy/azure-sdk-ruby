# AzureSDK::StorageAccountRegenerateKeyParameters

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key_name** | **String** | The name of storage keys that want to be regenerated, possible values are key1, key2, kerb1, kerb2. |  |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::StorageAccountRegenerateKeyParameters.new(
  key_name: null
)
```

