# AzureRest::ServerRestartParameter

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **restart_with_failover** | [**EnableStatusEnum**](EnableStatusEnum.md) |  | [optional] |
| **max_failover_seconds** | **Integer** | The maximum allowed failover time in seconds. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::ServerRestartParameter.new(
  restart_with_failover: null,
  max_failover_seconds: null
)
```

