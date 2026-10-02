# AzureSDK::ServerEditionCapability

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Server edition name | [optional][readonly] |
| **supported_storage_editions** | [**Array&lt;StorageEditionCapability&gt;**](StorageEditionCapability.md) | A list of supported storage editions | [optional][readonly] |
| **supported_server_versions** | [**Array&lt;ServerVersionCapability&gt;**](ServerVersionCapability.md) | A list of supported server versions. | [optional][readonly] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::ServerEditionCapability.new(
  name: null,
  supported_storage_editions: null,
  supported_server_versions: null
)
```

