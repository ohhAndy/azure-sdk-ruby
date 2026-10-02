# AzureSDK::ServiceTagsListResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name of the cloud. | [optional][readonly] |
| **id** | **String** | The ID of the cloud. | [optional][readonly] |
| **type** | **String** | The azure resource type. | [optional][readonly] |
| **change_number** | **String** | The iteration number. | [optional][readonly] |
| **cloud** | **String** | The name of the cloud. | [optional][readonly] |
| **values** | [**Array&lt;ServiceTagInformation&gt;**](ServiceTagInformation.md) | The list of service tag information resources. | [optional][readonly] |
| **next_link** | **String** | The URL to get next page of service tag information resources. | [optional][readonly] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::ServiceTagsListResult.new(
  name: null,
  id: null,
  type: null,
  change_number: null,
  cloud: null,
  values: null,
  next_link: null
)
```

