# AzureRest::BootDiagnostics

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **enabled** | **Boolean** | Whether boot diagnostics should be enabled on the Virtual Machine. | [optional] |
| **storage_uri** | **String** | Uri of the storage account to use for placing the console output and screenshot. If storageUri is not specified while enabling boot diagnostics, managed storage will be used. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::BootDiagnostics.new(
  enabled: null,
  storage_uri: null
)
```

