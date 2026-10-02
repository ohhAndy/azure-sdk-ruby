# AzureSDK::DiffDiskSettings

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **option** | [**DiffDiskOptions**](DiffDiskOptions.md) |  | [optional] |
| **placement** | [**DiffDiskPlacement**](DiffDiskPlacement.md) |  | [optional] |
| **enable_full_caching** | **Boolean** | Specifies whether or not to enable full caching for this VM which will cache the OS disk locally on the host and make this VM more resilient to storage outages | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::DiffDiskSettings.new(
  option: null,
  placement: null,
  enable_full_caching: null
)
```

