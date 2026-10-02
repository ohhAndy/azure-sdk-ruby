# AzureSDK::MHSMPrivateEndpointConnectionsListResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | [**Array&lt;MHSMPrivateEndpointConnection&gt;**](MHSMPrivateEndpointConnection.md) | The MhsmPrivateEndpointConnection items on this page |  |
| **next_link** | **String** | The link to the next page of items | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::MHSMPrivateEndpointConnectionsListResult.new(
  value: null,
  next_link: null
)
```

