# AzureSDK::RestartParameter

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **restart_with_failover** | **Boolean** | Indicates if restart the PostgreSQL database engine should failover or switch over from primary to standby. This only works if server has high availability enabled. | [optional] |
| **failover_mode** | [**FailoverMode**](FailoverMode.md) |  | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::RestartParameter.new(
  restart_with_failover: null,
  failover_mode: null
)
```

