# AzureRest::RetrieveBootDiagnosticsDataResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **console_screenshot_blob_uri** | **String** | The console screenshot blob URI | [optional][readonly] |
| **serial_console_log_blob_uri** | **String** | The serial console log blob URI. | [optional][readonly] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::RetrieveBootDiagnosticsDataResult.new(
  console_screenshot_blob_uri: null,
  serial_console_log_blob_uri: null
)
```

