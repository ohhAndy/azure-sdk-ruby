# AzureRest::FileServicePropertiesProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cors** | [**CorsRules**](CorsRules.md) |  | [optional] |
| **share_delete_retention_policy** | [**DeleteRetentionPolicy**](DeleteRetentionPolicy.md) |  | [optional] |
| **protocol_settings** | [**ProtocolSettings**](ProtocolSettings.md) |  | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::FileServicePropertiesProperties.new(
  cors: null,
  share_delete_retention_policy: null,
  protocol_settings: null
)
```

