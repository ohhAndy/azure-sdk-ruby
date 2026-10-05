# AzureRest::ManagedHsmLifetimeAction

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **trigger** | [**ManagedHsmTrigger**](ManagedHsmTrigger.md) |  | [optional] |
| **action** | [**ManagedHsmAction**](ManagedHsmAction.md) |  | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::ManagedHsmLifetimeAction.new(
  trigger: null,
  action: null
)
```

