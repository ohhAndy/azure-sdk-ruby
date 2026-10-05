# AzureRest::BlobInventoryPolicyProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **last_modified_time** | **Time** | Returns the last modified date and time of the blob inventory policy. | [optional][readonly] |
| **policy** | [**BlobInventoryPolicySchema**](BlobInventoryPolicySchema.md) |  |  |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::BlobInventoryPolicyProperties.new(
  last_modified_time: null,
  policy: null
)
```

