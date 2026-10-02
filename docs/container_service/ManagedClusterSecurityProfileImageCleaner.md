# AzureSDK::ManagedClusterSecurityProfileImageCleaner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **enabled** | **Boolean** | Whether to enable Image Cleaner on AKS cluster. | [optional] |
| **interval_hours** | **Integer** | Image Cleaner scanning interval in hours. | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::ManagedClusterSecurityProfileImageCleaner.new(
  enabled: null,
  interval_hours: null
)
```

