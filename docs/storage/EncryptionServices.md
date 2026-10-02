# AzureSDK::EncryptionServices

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **blob** | [**EncryptionService**](EncryptionService.md) |  | [optional] |
| **file** | [**EncryptionService**](EncryptionService.md) |  | [optional] |
| **table** | [**EncryptionService**](EncryptionService.md) |  | [optional] |
| **queue** | [**EncryptionService**](EncryptionService.md) |  | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::EncryptionServices.new(
  blob: null,
  file: null,
  table: null,
  queue: null
)
```

