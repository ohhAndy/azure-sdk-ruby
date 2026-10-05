# AzureRest::CommonErrorDetail

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
require 'azure_rest'

instance = AzureRest::CommonErrorDetail.new(
  code: null,
  message: null,
  target: null,
  details: null,
  additional_info: null
)
```

