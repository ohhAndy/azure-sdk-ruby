# AzureRest::ZoneMovement

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **is_enabled** | **Boolean** | Indicates if zone movement is enabled. By default isEnabled is set to false i.e VM can&#39;t be moved from one zone to another. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::ZoneMovement.new(
  is_enabled: null
)
```

