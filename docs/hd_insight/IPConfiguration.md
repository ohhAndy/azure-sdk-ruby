# AzureSDK::IPConfiguration

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The private link IP configuration id. | [optional][readonly] |
| **name** | **String** | The name of private link IP configuration. |  |
| **type** | **String** | The type of the private link IP configuration. | [optional][readonly] |
| **properties** | [**IPConfigurationProperties**](IPConfigurationProperties.md) |  | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::IPConfiguration.new(
  id: null,
  name: null,
  type: null,
  properties: null
)
```

