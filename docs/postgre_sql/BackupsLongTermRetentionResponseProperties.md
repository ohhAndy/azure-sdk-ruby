# AzureSDK::BackupsLongTermRetentionResponseProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **number_of_containers** | **Integer** | Number of storage containers the plugin will use during backup. More than one containers may be used for size limitations, parallelism, or redundancy etc. |  |

## Example

```ruby
require 'azure_sdk'

instance = AzureSDK::BackupsLongTermRetentionResponseProperties.new(
  number_of_containers: null
)
```

