# AzureRest::IntentContent

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **description** | **String** |  | [optional] |
| **source_resource_id** | **String** | Source resource id of the intent. |  |
| **destination_resource_id** | **String** | Destination resource id of the intent. |  |
| **ip_traffic** | [**IPTraffic**](IPTraffic.md) |  |  |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::IntentContent.new(
  description: null,
  source_resource_id: null,
  destination_resource_id: null,
  ip_traffic: null
)
```

