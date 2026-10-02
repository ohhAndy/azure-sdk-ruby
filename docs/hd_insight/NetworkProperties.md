# AzureSDK::NetworkProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **resource_provider_connection** | **String** | The direction for the resource provider connection. | [optional] |
| **private_link** | **String** | Indicates whether or not private link is enabled. | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::NetworkProperties.new(
  resource_provider_connection: null,
  private_link: null
)
```

