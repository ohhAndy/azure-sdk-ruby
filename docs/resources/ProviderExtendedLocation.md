# AzureSDK::ProviderExtendedLocation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **location** | **String** | The azure location. | [optional] |
| **type** | **String** | The extended location type. | [optional] |
| **extended_locations** | **Array&lt;String&gt;** | The extended locations for the azure location. | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::ProviderExtendedLocation.new(
  location: null,
  type: null,
  extended_locations: null
)
```

