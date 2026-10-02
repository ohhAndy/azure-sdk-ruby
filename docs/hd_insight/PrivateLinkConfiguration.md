# AzureSDK::PrivateLinkConfiguration

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The private link configuration id. | [optional][readonly] |
| **name** | **String** | The name of private link configuration. |  |
| **type** | **String** | The type of the private link configuration. | [optional][readonly] |
| **properties** | [**PrivateLinkConfigurationProperties**](PrivateLinkConfigurationProperties.md) |  |  |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::PrivateLinkConfiguration.new(
  id: null,
  name: null,
  type: null,
  properties: null
)
```

