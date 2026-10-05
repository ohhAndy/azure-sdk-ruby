# AzureRest::ManagedClusterStorageProfileFileCSIDriver

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **enabled** | **Boolean** | Whether to enable AzureFile CSI Driver. The default value is true. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::ManagedClusterStorageProfileFileCSIDriver.new(
  enabled: null
)
```

