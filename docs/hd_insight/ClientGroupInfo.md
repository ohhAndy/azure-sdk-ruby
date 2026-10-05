# AzureRest::ClientGroupInfo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **group_name** | **String** | The AAD security group name. | [optional] |
| **group_id** | **String** | The AAD security group id. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::ClientGroupInfo.new(
  group_name: null,
  group_id: null
)
```

