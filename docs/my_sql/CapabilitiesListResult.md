# AzureSDK::CapabilitiesListResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | [**Array&lt;CapabilityProperties&gt;**](CapabilityProperties.md) | The CapabilityProperties items on this page | [optional][readonly] |
| **next_link** | **String** | The link to the next page of items | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::CapabilitiesListResult.new(
  value: null,
  next_link: null
)
```

