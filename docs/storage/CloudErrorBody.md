# AzureSDK::CloudErrorBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **String** | An identifier for the error. Codes are invariant and are intended to be consumed programmatically. | [optional] |
| **message** | **String** | A message describing the error, intended to be suitable for display in a user interface. | [optional] |
| **target** | **String** | The target of the particular error. For example, the name of the property in error. | [optional] |
| **details** | [**Array&lt;CloudErrorBody&gt;**](CloudErrorBody.md) | A list of additional details about the error. | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::CloudErrorBody.new(
  code: null,
  message: null,
  target: null,
  details: null
)
```

