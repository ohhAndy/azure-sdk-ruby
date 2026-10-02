# AzureSDK::AllInstancesDown

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **automatically_approve** | **Boolean** | Specifies if Scheduled Events should be auto-approved when all instances are down. its default value is true | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::AllInstancesDown.new(
  automatically_approve: null
)
```

