# AzureRest::PrivateLinkServiceConnectionStateProperty

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | [**PrivateLinkServiceConnectionStateStatus**](PrivateLinkServiceConnectionStateStatus.md) |  |  |
| **description** | **String** | The private link service connection description. |  |
| **actions_required** | [**PrivateLinkServiceConnectionStateActionsRequire**](PrivateLinkServiceConnectionStateActionsRequire.md) |  | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::PrivateLinkServiceConnectionStateProperty.new(
  status: null,
  description: null,
  actions_required: null
)
```

