# AzureRest::MHSMRegionsListResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | [**Array&lt;MHSMGeoReplicatedRegion&gt;**](MHSMGeoReplicatedRegion.md) | The MhsmGeoReplicatedRegion items on this page |  |
| **next_link** | **String** | The link to the next page of items | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::MHSMRegionsListResult.new(
  value: null,
  next_link: null
)
```

