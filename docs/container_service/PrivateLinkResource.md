# AzureSDK::PrivateLinkResource

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the private link resource. | [optional] |
| **name** | **String** | The name of the private link resource. See [naming rules](https://aka.ms/search-naming-rules) for more details. | [optional] |
| **type** | **String** | The resource type. | [optional] |
| **group_id** | **String** | The group ID of the resource. | [optional] |
| **required_members** | **Array&lt;String&gt;** | The RequiredMembers of the resource | [optional] |
| **private_link_service_id** | **String** | The private link service ID of the resource, this field is exposed only to NRP internally. | [optional][readonly] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::PrivateLinkResource.new(
  id: null,
  name: null,
  type: null,
  group_id: null,
  required_members: null,
  private_link_service_id: null
)
```

