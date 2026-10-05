# AzureRest::LogFileProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **size_in_kb** | **Integer** | The size in kb of the logFile. | [optional] |
| **created_time** | **Time** | Creation timestamp of the log file. | [optional] |
| **type** | **String** | Type of the log file. | [optional] |
| **last_modified_time** | **Time** | Last modified timestamp of the log file. | [optional] |
| **url** | **String** | The url to download the log file from. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::LogFileProperties.new(
  size_in_kb: null,
  created_time: null,
  type: null,
  last_modified_time: null,
  url: null
)
```

