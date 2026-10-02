# AzureSDK::BlobInventoryPolicyProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **last_modified_time** | **Time** | Returns the last modified date and time of the blob inventory policy. | [optional][readonly] |
| **policy** | [**BlobInventoryPolicySchema**](BlobInventoryPolicySchema.md) |  |  |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::BlobInventoryPolicyProperties.new(
  last_modified_time: null,
  policy: null
)
```

