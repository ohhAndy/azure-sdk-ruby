# AzureRest::MoveIpConfigurationItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **source_ip_configuration** | [**MoveIpConfigurationResourceReference**](MoveIpConfigurationResourceReference.md) |  |  |
| **target_ip_configuration** | [**MoveIpConfigurationResourceReference**](MoveIpConfigurationResourceReference.md) |  |  |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::MoveIpConfigurationItem.new(
  source_ip_configuration: null,
  target_ip_configuration: null
)
```

