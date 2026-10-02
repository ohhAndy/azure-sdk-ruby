# AzureSDK::KafkaRestProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **client_group_info** | [**ClientGroupInfo**](ClientGroupInfo.md) |  | [optional] |
| **configuration_override** | **Hash&lt;String, String&gt;** | The configurations that need to be overriden. | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::KafkaRestProperties.new(
  client_group_info: null,
  configuration_override: null
)
```

