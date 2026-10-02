# AzureSDK::RoutingPreference

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **routing_choice** | [**RoutingChoice**](RoutingChoice.md) |  | [optional] |
| **publish_microsoft_endpoints** | **Boolean** | A boolean flag which indicates whether microsoft routing storage endpoints are to be published | [optional] |
| **publish_internet_endpoints** | **Boolean** | A boolean flag which indicates whether internet routing storage endpoints are to be published | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::RoutingPreference.new(
  routing_choice: null,
  publish_microsoft_endpoints: null,
  publish_internet_endpoints: null
)
```

