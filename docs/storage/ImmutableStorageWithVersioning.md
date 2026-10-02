# AzureSDK::ImmutableStorageWithVersioning

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **enabled** | **Boolean** | This is an immutable property, when set to true it enables object level immutability at the container level. | [optional] |
| **time_stamp** | **Time** | Returns the date and time the object level immutability was enabled. | [optional][readonly] |
| **migration_state** | [**MigrationState**](MigrationState.md) |  | [optional] |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::ImmutableStorageWithVersioning.new(
  enabled: null,
  time_stamp: null,
  migration_state: null
)
```

