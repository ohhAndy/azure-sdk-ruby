# AzureRest::ValidateBackupResponseProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **number_of_containers** | **Integer** | Estimated no of storage containers required for resource data to be backed up. | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::ValidateBackupResponseProperties.new(
  number_of_containers: null
)
```

