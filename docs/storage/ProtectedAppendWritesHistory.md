# AzureSDK::ProtectedAppendWritesHistory

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **allow_protected_append_writes_all** | **Boolean** | When enabled, new blocks can be written to both &#39;Append and Bock Blobs&#39; while maintaining legal hold protection and compliance. Only new blocks can be added and any existing blocks cannot be modified or deleted. | [optional] |
| **timestamp** | **Time** | Returns the date and time the tag was added. | [optional][readonly] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::ProtectedAppendWritesHistory.new(
  allow_protected_append_writes_all: null,
  timestamp: null
)
```

