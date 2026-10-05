# AzureRest::PrivateDnsZoneConfig

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of the resource that is unique within a resource group. This name can be used to access the resource. | [optional] |
| **properties** | [**PrivateDnsZonePropertiesFormat**](PrivateDnsZonePropertiesFormat.md) |  | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::PrivateDnsZoneConfig.new(
  name: null,
  properties: null
)
```

