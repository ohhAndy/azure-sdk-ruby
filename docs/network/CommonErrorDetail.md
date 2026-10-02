# AzureSDK::CommonErrorDetail

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **String** | The error code. | [optional][readonly] |
| **message** | **String** | The error message. | [optional][readonly] |
| **target** | **String** | The error target. | [optional][readonly] |
| **details** | [**Array&lt;CommonErrorDetail&gt;**](CommonErrorDetail.md) | The error details. | [optional][readonly] |
| **additional_info** | [**Array&lt;CommonErrorAdditionalInfo&gt;**](CommonErrorAdditionalInfo.md) | The error additional info. | [optional][readonly] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::CommonErrorDetail.new(
  code: null,
  message: null,
  target: null,
  details: null,
  additional_info: null
)
```

