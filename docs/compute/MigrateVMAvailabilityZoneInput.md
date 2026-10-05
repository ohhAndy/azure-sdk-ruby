# AzureRest::MigrateVMAvailabilityZoneInput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **instance_ids** | **Array&lt;String&gt;** | The virtual machine scale set instance ids to be migrated to the target availability zone. |  |
| **target_zone** | **String** | The target logical availability zone (\&quot;1\&quot;, \&quot;2\&quot; or \&quot;3\&quot;) to migrate the virtual machine scale set instances to. If omitted, the platform selects the target zone. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::MigrateVMAvailabilityZoneInput.new(
  instance_ids: null,
  target_zone: null
)
```

