# AzureSDK::RestorePointCollectionSourceProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **location** | **String** | Location of the source resource used to create this restore point collection. | [optional][readonly] |
| **id** | **String** | Resource Id of the source resource used to create this restore point collection | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::RestorePointCollectionSourceProperties.new(
  location: null,
  id: null
)
```

