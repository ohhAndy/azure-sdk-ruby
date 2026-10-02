# AzureSDK::ServiceTagInformationListResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | [**Array&lt;ServiceTagInformation&gt;**](ServiceTagInformation.md) | The ServiceTagInformation items on this page |  |
| **next_link** | **String** | The link to the next page of items | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::ServiceTagInformationListResult.new(
  value: null,
  next_link: null
)
```

