# AzureSDK::SystemData2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **created_by** | **String** | The identity that created the resource. | [optional] |
| **created_by_type** | **String** | The type of identity that created the resource. | [optional] |
| **created_at** | **Time** | The timestamp of resource creation (UTC). | [optional] |
| **last_modified_by** | **String** | The identity that last modified the resource. | [optional] |
| **last_modified_by_type** | **String** | The type of identity that last modified the resource. | [optional] |
| **last_modified_at** | **Time** | The timestamp of resource last modification (UTC) | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::SystemData2.new(
  created_by: null,
  created_by_type: null,
  created_at: null,
  last_modified_by: null,
  last_modified_by_type: null,
  last_modified_at: null
)
```

