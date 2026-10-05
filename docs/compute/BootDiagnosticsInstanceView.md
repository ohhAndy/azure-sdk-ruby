# AzureRest::BootDiagnosticsInstanceView

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **console_screenshot_blob_uri** | **String** | The console screenshot blob URI. **Note:** This will **not** be set if boot diagnostics is currently enabled with managed storage. | [optional][readonly] |
| **serial_console_log_blob_uri** | **String** | The serial console log blob Uri. **Note:** This will **not** be set if boot diagnostics is currently enabled with managed storage. | [optional][readonly] |
| **status** | [**InstanceViewStatus**](InstanceViewStatus.md) |  | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::BootDiagnosticsInstanceView.new(
  console_screenshot_blob_uri: null,
  serial_console_log_blob_uri: null,
  status: null
)
```

