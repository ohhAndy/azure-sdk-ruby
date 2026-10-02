# AzureSDK::ContextCacheContainerProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **description** | **String** | Container description. | [optional] |
| **model_name** | **String** | The model name associated with this container (e.g., gpt-4, claude-3). |  |
| **provider** | [**AiProvider**](AiProvider.md) |  |  |
| **time_to_live** | **Integer** | The Time to Live (TTL) in days (1–30) for this container. Blobs in the container that have not been accessed within this number of days will be automatically deleted. If not specified at creation time, it defaults to 1 day. | [optional] |
| **provisioning_state** | [**ContextCacheProvisioningState**](ContextCacheProvisioningState.md) |  | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::ContextCacheContainerProperties.new(
  description: null,
  model_name: null,
  provider: null,
  time_to_live: null,
  provisioning_state: null
)
```

