# AzureRest::UserInitiatedReboot

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **automatically_approve** | **Boolean** | Specifies Reboot Scheduled Event related configurations. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::UserInitiatedReboot.new(
  automatically_approve: null
)
```

