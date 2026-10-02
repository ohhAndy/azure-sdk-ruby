# AzureSDK::DedicatedHostGroupUpdate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tags** | **Hash&lt;String, String&gt;** | Resource tags | [optional] |
| **properties** | [**DedicatedHostGroupProperties**](DedicatedHostGroupProperties.md) |  | [optional] |
| **zones** | **Array&lt;String&gt;** | Availability Zone to use for this host group. Only single zone is supported. The zone can be assigned only during creation. If not provided, the group supports all zones in the region. If provided, enforces each host in the group to be in the same zone. | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::DedicatedHostGroupUpdate.new(
  tags: null,
  properties: null,
  zones: null
)
```

