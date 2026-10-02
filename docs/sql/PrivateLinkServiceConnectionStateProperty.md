# AzureSDK::PrivateLinkServiceConnectionStateProperty

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | [**PrivateLinkServiceConnectionStateStatus**](PrivateLinkServiceConnectionStateStatus.md) |  |  |
| **description** | **String** | The private link service connection description. |  |
| **actions_required** | [**PrivateLinkServiceConnectionStateActionsRequire**](PrivateLinkServiceConnectionStateActionsRequire.md) |  | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::PrivateLinkServiceConnectionStateProperty.new(
  status: null,
  description: null,
  actions_required: null
)
```

