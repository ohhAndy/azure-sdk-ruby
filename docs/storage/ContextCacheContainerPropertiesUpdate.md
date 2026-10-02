# AzureSDK::ContextCacheContainerPropertiesUpdate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **description** | **String** | Container description. | [optional] |
| **time_to_live** | **Integer** | The Time to Live (TTL) in days (1–30) for this container. Blobs in the container that have not been accessed within this number of days will be automatically deleted. | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::ContextCacheContainerPropertiesUpdate.new(
  description: null,
  time_to_live: null
)
```

