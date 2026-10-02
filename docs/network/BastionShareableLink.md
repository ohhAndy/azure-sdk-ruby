# AzureSDK::BastionShareableLink

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vm** | [**VM**](VM.md) |  |  |
| **bsl** | **String** | The unique Bastion Shareable Link to the virtual machine. | [optional][readonly] |
| **created_at** | **String** | The time when the link was created. | [optional][readonly] |
| **message** | **String** | Optional field indicating the warning or error message related to the vm in case of partial failure. | [optional][readonly] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::BastionShareableLink.new(
  vm: null,
  bsl: null,
  created_at: null,
  message: null
)
```

