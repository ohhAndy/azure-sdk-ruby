# AzureSDK::ErrorDetail

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **String** | The error code. | [optional][readonly] |
| **message** | **String** | The error message. | [optional][readonly] |
| **target** | **String** | The error target. | [optional][readonly] |
| **details** | [**Array&lt;ErrorDetail&gt;**](ErrorDetail.md) | The error details. | [optional][readonly] |
| **additional_info** | [**Array&lt;ErrorAdditionalInfo&gt;**](ErrorAdditionalInfo.md) | The error additional info. | [optional][readonly] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::ErrorDetail.new(
  code: null,
  message: null,
  target: null,
  details: null,
  additional_info: null
)
```

