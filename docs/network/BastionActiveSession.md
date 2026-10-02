# AzureSDK::BastionActiveSession

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **session_id** | **String** | A unique id for the session. | [optional][readonly] |
| **start_time** | **Object** | The time when the session started. | [optional][readonly] |
| **target_subscription_id** | **String** | The subscription id for the target virtual machine. | [optional][readonly] |
| **resource_type** | **String** | The type of the resource. | [optional][readonly] |
| **target_host_name** | **String** | The host name of the target. | [optional][readonly] |
| **target_resource_group** | **String** | The resource group of the target. | [optional][readonly] |
| **user_name** | **String** | The user name who is active on this session. | [optional][readonly] |
| **target_ip_address** | **String** | The IP Address of the target. | [optional][readonly] |
| **protocol** | [**BastionConnectProtocol**](BastionConnectProtocol.md) |  | [optional] |
| **target_resource_id** | **String** | The resource id of the target. | [optional][readonly] |
| **session_duration_in_mins** | **Float** | Duration in mins the session has been active. | [optional][readonly] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::BastionActiveSession.new(
  session_id: null,
  start_time: null,
  target_subscription_id: null,
  resource_type: null,
  target_host_name: null,
  target_resource_group: null,
  user_name: null,
  target_ip_address: null,
  protocol: null,
  target_resource_id: null,
  session_duration_in_mins: null
)
```

