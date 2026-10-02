# AzureSDK::InstanceViewStatus

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **String** | The status code. | [optional] |
| **level** | [**StatusLevelTypes**](StatusLevelTypes.md) |  | [optional] |
| **display_status** | **String** | The short localizable label for the status. | [optional] |
| **message** | **String** | The detailed status message, including for alerts and error messages. | [optional] |
| **time** | **Time** | The time of the status. | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::InstanceViewStatus.new(
  code: null,
  level: null,
  display_status: null,
  message: null,
  time: null
)
```

