# AzureRest::RecoveryWalkResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **walk_performed** | **Boolean** | Whether the recovery walk was performed | [optional][readonly] |
| **next_platform_update_domain** | **Integer** | The next update domain that needs to be walked. Null means walk spanning all update domains has been completed | [optional][readonly] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::RecoveryWalkResponse.new(
  walk_performed: null,
  next_platform_update_domain: null
)
```

