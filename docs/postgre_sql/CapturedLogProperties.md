# AzureSDK::CapturedLogProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **created_time** | **Time** | Creation timestamp of the log file. | [optional] |
| **last_modified_time** | **Time** | Last modified timestamp of the log file. | [optional] |
| **size_in_kb** | **Integer** | Size (in KB) of the log file. | [optional] |
| **type** | **String** | Type of log file. Can be &#39;ServerLogs&#39; or &#39;UpgradeLogs&#39;. | [optional] |
| **url** | **String** | URL to download the log file from. | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::CapturedLogProperties.new(
  created_time: null,
  last_modified_time: null,
  size_in_kb: null,
  type: null,
  url: null
)
```

