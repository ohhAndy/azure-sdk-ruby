# AzureSDK::ServiceTagInformation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **properties** | [**ServiceTagInformationPropertiesFormat**](ServiceTagInformationPropertiesFormat.md) |  | [optional] |
| **name** | **String** | The name of service tag. | [optional][readonly] |
| **id** | **String** | The ID of service tag. | [optional][readonly] |
| **service_tag_change_number** | **String** | The iteration number of service tag object for region. | [optional][readonly] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::ServiceTagInformation.new(
  properties: null,
  name: null,
  id: null,
  service_tag_change_number: null
)
```

