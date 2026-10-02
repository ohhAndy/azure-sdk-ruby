# AzureSDK::PrivateEndpointIPConfigurationProperties2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **group_id** | **String** | The ID of a group obtained from the remote resource that this private endpoint should connect to. | [optional] |
| **member_name** | **String** | The member name of a group obtained from the remote resource that this private endpoint should connect to. | [optional] |
| **private_ip_address** | **String** | A private ip address obtained from the private endpoint&#39;s subnet. | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::PrivateEndpointIPConfigurationProperties2.new(
  group_id: null,
  member_name: null,
  private_ip_address: null
)
```

