# AzureSDK::EncryptionService

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **enabled** | **Boolean** | A boolean indicating whether or not the service encrypts the data as it is stored. Encryption at rest is enabled by default today and cannot be disabled. | [optional] |
| **last_enabled_time** | **Time** | Gets a rough estimate of the date/time when the encryption was last enabled by the user. Data is encrypted at rest by default today and cannot be disabled. | [optional][readonly] |
| **key_type** | [**KeyType**](KeyType.md) |  | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::EncryptionService.new(
  enabled: null,
  last_enabled_time: null,
  key_type: null
)
```

