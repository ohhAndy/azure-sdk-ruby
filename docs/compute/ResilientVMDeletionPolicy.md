# AzureSDK::ResilientVMDeletionPolicy

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **enabled** | **Boolean** | Specifies whether resilient VM deletion should be enabled on the virtual machine scale set. The default value is false. | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::ResilientVMDeletionPolicy.new(
  enabled: null
)
```

