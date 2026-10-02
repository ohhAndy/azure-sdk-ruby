# AzureSDK::MHSMRegionsListResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | [**Array&lt;MHSMGeoReplicatedRegion&gt;**](MHSMGeoReplicatedRegion.md) | The MhsmGeoReplicatedRegion items on this page |  |
| **next_link** | **String** | The link to the next page of items | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::MHSMRegionsListResult.new(
  value: null,
  next_link: null
)
```

