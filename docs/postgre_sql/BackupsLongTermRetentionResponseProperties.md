# AzureRest::BackupsLongTermRetentionResponseProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **number_of_containers** | **Integer** | Number of storage containers the plugin will use during backup. More than one containers may be used for size limitations, parallelism, or redundancy etc. |  |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::BackupsLongTermRetentionResponseProperties.new(
  number_of_containers: null
)
```

