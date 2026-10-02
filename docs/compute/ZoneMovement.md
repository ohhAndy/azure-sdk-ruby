# AzureSDK::ZoneMovement

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **is_enabled** | **Boolean** | Indicates if zone movement is enabled. By default isEnabled is set to false i.e VM can&#39;t be moved from one zone to another. | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::ZoneMovement.new(
  is_enabled: null
)
```

