# AzureSDK::DedicatedHostListResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | [**Array&lt;DedicatedHost&gt;**](DedicatedHost.md) | The list of dedicated hosts. |  |
| **next_link** | **String** | The URI to fetch the next page of dedicated hosts. Call ListNext() with this URI to fetch the next page of dedicated hosts. | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::DedicatedHostListResult.new(
  value: null,
  next_link: null
)
```

