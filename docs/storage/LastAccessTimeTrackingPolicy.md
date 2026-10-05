# AzureRest::LastAccessTimeTrackingPolicy

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **enable** | **Boolean** | When set to true last access time based tracking is enabled. |  |
| **name** | [**Name**](Name.md) |  | [optional] |
| **tracking_granularity_in_days** | **Integer** | The field specifies blob object tracking granularity in days, typically how often the blob object should be tracked.This field is currently read only with value as 1 | [optional] |
| **blob_type** | **Array&lt;String&gt;** | An array of predefined supported blob types. Only blockBlob is the supported value. This field is currently read only | [optional] |

## Example

```ruby
require 'azure_rest'

instance = AzureRest::LastAccessTimeTrackingPolicy.new(
  enable: null,
  name: null,
  tracking_granularity_in_days: null,
  blob_type: null
)
```

